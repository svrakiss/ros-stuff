"""trt_yolov3.py

This script demonstrates how to do real-time object detection with
TensorRT optimized YOLOv3 engine.
"""


import sys
import time
import argparse
import pyrealsense2 as rs
import cv2
import pycuda.autoinit  # This is needed for initializing CUDA driver

from yolov3_classes import get_cls_dict
from yolov3 import TrtYOLOv3
from utils2.camera import add_camera_args, Camera
from utils2.display import open_window, set_display, show_fps
from utils2.visualization import BBoxVisualization


WINDOW_NAME = 'TrtYOLOv3Demo'


def parse_args():
    """Parse input arguments."""
    desc = ('Capture and display live camera video, while doing '
            'real-time object detection with TensorRT optimized '
            'YOLOv3 model on Jetson Nano')
    parser = argparse.ArgumentParser(description=desc)
    parser = add_camera_args(parser)
    parser.add_argument('--model', type=str, default='yolov3-416',
                        choices=['yolov3-288', 'yolov3-416', 'yolov3-608',
                                 'yolov3-tiny-288', 'yolov3-tiny-416'])
    args = parser.parse_args()
    return args


def loop_and_detect(pipeline, trt_yolov3, conf_th, vis):
    """Continuously capture images from camera and do object detection.

    # Argumentse
      cam: the camera instance (video source).
      trt_yolov3: the TRT YOLOv3 object detector instance.
      conf_th: confidence/score threshold for object detection.
      vis: for visualization.
    """
    # pipeline = rs.pipeline()
    # config = rs.config()
    # config.enable_stream(rs.stream.depth, 640,480, rs.format.z16, 90)
    # config.enable_stream(rs.stream.color, 640,480, rs.format.bgr8, 30)
    # align_to = rs.stream.color
    
    
    # align = rs.align(align_to)
    # pipeline.start(config)

    full_scrn = False
    fps = 0.0
    tic = time.time()
    cv2.namedWindow(WINDOW_NAME, cv2.WINDOW_AUTOSIZE)
    while True:
        if cv2.getWindowProperty(WINDOW_NAME, 0) < 0:
            break
        img = cam.read()
        frames = pipeline.wait_for_frames()

            # Align the depth frame to color frame
        aligned_frames = align.process(frames)

            # Get aligned frames
        depth_frame = aligned_frames.get_depth_frame()
        color_frame = aligned_frames.get_color_frame()
        if not depth_frame or not color_frame:
            continue
        depth_image = np.asanyarray(depth_frame.get_data())
        color_image = np.asanyarray(color_frame.get_data())
        depth_colormap = cv2.applyColorMap(cv2.convertScaleAbs(depth_image, alpha=0.03), cv2.COLORMAP_JET)                                               
        with color_image as img:
            if img is not None:
                boxes, confs, clss = trt_yolov3.detect(img, conf_th)
                img = vis.draw_bboxes(img, boxes, confs, clss)
                img = show_fps(img, fps)
                img=np.hstack((img,depth_colormap))
                cv2.imshow(WINDOW_NAME, img)
                toc = time.time()
                curr_fps = 1.0 / (toc - tic)
                # calculate an exponentially decaying average of fps number
                fps = curr_fps if fps == 0.0 else (fps*0.95 + curr_fps*0.05)
                tic = toc
        key = cv2.waitKey(1)
        if key == 27:  # ESC key: quit program
            pipeline.stop()
            cv2.destroyAllWindows()
            break
            
        elif key == ord('F') or key == ord('f'):  # Toggle fullscreen
            full_scrn = not full_scrn
            set_display(WINDOW_NAME, full_scrn)


def main():
    args = parse_args()
    cam = Camera(args)
    cam.open()
    if not cam.is_opened:
        sys.exit('Failed to open camera!')

    cls_dict = get_cls_dict('coco')
    yolo_dim = int(args.model.split('-')[-1])  # 416 or 608
    trt_yolov3 = TrtYOLOv3(args.model, (yolo_dim, yolo_dim))

    cam.start()
    open_window(WINDOW_NAME, args.image_width, args.image_height,
                'Camera TensorRT YOLOv3 Demo')
    vis = BBoxVisualization(cls_dict)
    loop_and_detect(cam, trt_yolov3, conf_th=0.3, vis=vis)

    cam.stop()
    cam.release()
    cv2.destroyAllWindows()


if __name__ == '__main__':
    main()
