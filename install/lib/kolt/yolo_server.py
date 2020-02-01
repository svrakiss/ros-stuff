#!/usr/bin/env python3

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
# import pycuda.autoinit  # This is needed for initializing CUDA driver
# import pycuda.autoinit
import pycuda.driver as cuda
import os
from kolt.srv import *
import rospy
from copy import deepcopy
import pycuda
import cv2
import numpy as np
# from core import YOLO
from vision_msgs.msg import Detection2DArray, Detection2D, BoundingBox2D, ObjectHypothesisWithPose
from geometry_msgs.msg import PoseWithCovariance, Pose2D
from std_msgs.msg import Header
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from core import TrtYOLOv3
os.environ["CUDA_DEVICE_ORDER"]="PCI_BUS_ID"
os.environ["CUDA_VISIBLE_DEVICES"]="0"
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
import threading
# These global variables are 'shared' between the main and child
# threads.  The child thread writes new frame and detection result
# into these variables, while the main thread reads from them.
s_img, s_boxes, s_confs, s_clss = None, None, None, None

class TrtThread(threading.Thread):
    """TrtThread

    This implements the child thread which continues to read images
    from cam (input) and to do TRT engine inferencing.  The child
    thread stores the input image and detection results into global
    variables and uses a condition varaiable to inform main thread.
    In other words, the TrtThread acts as the producer while the
    main thread is the consumer.
    """
    def __init__(self, condition, model, INPUT_HW,conf_th=.3):
        """__init__

        # Arguments
            condition: the condition variable used to notify main
                       thread about new frame and detection result
            # cam: the camera object for reading input image frames
            model: a string, specifying the TRT SSD model
            conf_th: confidence threshold for detection
        """
        threading.Thread.__init__(self)
        self.condition = condition
        # self.cam = cam
        self.model = model
        self.conf_th = conf_th
        self.cuda_ctx = None  # to be created when run
        self.trt_ssd = None   # to be created when run
        self.running = False
        self.INPUT_HW=INPUT_HW

    def run(self):
        """Run until 'running' flag is set to False by main thread.

        NOTE: CUDA context is created here, i.e. inside the thread
        which calls CUDA kernels.  In other words, creating CUDA
        context in __init__() doesn't work.
        """
        global s_img, s_boxes, s_confs, s_clss

        print('TrtThread: loading the TRT SSD engine...')
        self.cuda_ctx = cuda.Device(0).make_context()  # GPU 0
        # self.trt_ssd = TrtSSD(self.model, INPUT_HW)
        self.trt_ssd = TrtYOLOv3(self.model, self.INPUT_HW)
        print('TrtThread: start running...')
        self.running = True
        while self.running:
            with self.condition:
                self.condition.wait(0.5)
                img = s_img
                if img is not None:

                    boxes, confs, clss = self.trt_ssd.detect(img, self.conf_th)
                    s_boxes, s_confs, s_clss = boxes, confs, clss
                    self.condition.notify()
        del self.trt_ssd
        self.cuda_ctx.pop()
        del self.cuda_ctx
        print('TrtThread: stopped...')

    def stop(self):
        self.running = False
        #self.join()



class YoloServer(object):
    def __init__(self):
        self.bridge = CvBridge()

        self.n_gpu = rospy.get_param('~n_gpu', default=1)
        self.backend = rospy.get_param('~backend', default='full_yolo')                          # Either 'tiny_yolo', full_yolo, 'mobile_net, 'squeeze_net', or 'inception3'
        self.backend_path = rospy.get_param('~weights_path')                                     # Weights directory
        self.input_size = rospy.get_param('~input_size', default=416)                            # DO NOT change this. 416 is default for YOLO.
        self.labels = rospy.get_param('~labels')                                                 # Eg: ['trafficcone', 'person', 'dog']
        self.max_number_detections = rospy.get_param('~max_number_detections', default=5)        # Max number of detections
        self.anchors = rospy.get_param('~anchors', default=[0.57273, 0.677385, 1.87446,          # The anchors to use. Use the anchor generator and copy these into the config.
                                                  2.06253, 3.33843, 5.47434, 7.88282, 
                                                  3.52778, 9.77052, 9.16828])
        self.weights_path = rospy.get_param('~weights_path', default='../weights/full_yolo.h5')   # Path to the weights.h5 file
        self.weight_file = rospy.get_param('~weight_file')

        # self.yolo = YOLO(
        #     n_gpu=self.n_gpu,
        #     backend = self.backend,
        #     backend_path=self.backend_path,
        #     input_size = self.input_size, 
        #     labels = self.labels, 
        #     max_box_per_image = self.max_number_detections,
        #     anchors = self.anchors
        # )
        # rospy.loginfo("Current working dir: " , os.getcwd())
        # os.chdir('/home/nvidia/git/tensorrt_demos')
        # rospy.loginfo("Current working dir: ", os.getcwd())
        
        # self.yolo=None
        cuda.init()
        # self.cuda_ctx=cuda.Device(0).make_context()
        # cuda.Context.attach(0)
        # self.cuda_ctx.attach()
        # self.yolo=TrtYOLOv3(self.backend, (self.input_size,self.input_size))
        # pycuda.tools.context_dependent_memoized_function(self.yolo.detect)
        # pycuda.tools.context_dependent_memoize(self.yolo.detect)
#        self.yolo.load_weights(self.weights_path + '/' + self.weight_file)
        # self.done=False
        rospy.loginfo('YOLO detector ready...')
        cuda.set_debugging()
        # cuda.initialize_profiler()
        # cuda.start_profiler()
        self.condition=threading.Condition()
        self.trt_thread=TrtThread(self.condition,self.backend,(self.input_size,self.input_size))
        s = rospy.Service('yolo_detect', YoloDetect, self._handle_yolo_detect, buff_size=10000000)
        self.trt_thread.start()
        # self.test1()
        s.spin()
    def test1(self):
        imfile='/home/nvidia/Pictures/dog.jpg'
        image = cv2.imread(imfile)
        # dd=np.copy(image)
        dd=np.asanyarray(image)
        # try:
        # while not rospy.core.is_shutdown():
            # box,confx,clss = self.yolo.detect(dd) #works
        dd1=self.bridge.cv2_to_imgmsg(dd,"rgb8")
        resp=self._handle_yolo_detect(YoloDetectRequest(dd1))   #works

    def __del__(self):
        # cuda.Context.pop() # adding this was unnecessary b4 i added attach
        # self.cuda_ctx.pop()
        # y = self.yolo
        # del self.yolo
        # del self.cuda_ctx
        self.trt_thread.stop()
        # self.cuda_ctx=None
        # self.yolo=None
        # c = self.cuda_ctx
        # del c
    # def __yolo__(self):
        # self.yolo=None
    def _handle_yolo_detect(self, req):
        # self.cuda_ctx.attach()
        global s_img, s_boxes, s_confs, s_clss
        # if self.yolo==None:
            # self.cuda_ctx=cuda.Device(0).make_context()
            # self.yolo=TrtYOLOv3(self.backend, (self.input_size,self.input_size))
        # pycuda.tools.make_default_context()
        # cv_image = None
        detection_array = Detection2DArray()
        detections = []
        boxes = []
        
        try:
            s_img = self.bridge.imgmsg_to_cv2(req.image, "bgr8")
            # self.yolo.detect(cv_image)
            with self.condition:
                self.condition.acquire()
                self.condition.notify()
        except CvBridgeError as e:
            rospy.logerr(e)
        try:
            with self.condition:
                self.condition.wait()
                boxes, scores, classes  = s_boxes, s_confs, s_clss

        except Exception:
            pass
        rospy.loginfo('Found {} boxes'.format(len(boxes)))
        for box in boxes:
            detection = Detection2D()
            results = []
            bbox = BoundingBox2D()
            center = Pose2D()

            detection.header = Header()
            detection.header.stamp = rospy.get_rostime()
            # detection.source_img = deepcopy(req.image)
            
            labels = classes
            for i in range(0,len(labels)):
                object_hypothesis = ObjectHypothesisWithPose()
                object_hypothesis.id = i
                object_hypothesis.score = scores[i]
                results.append(object_hypothesis)
            
            detection.results = results
            # x_min, y_min, x_max, y_max = box[0], box[1], box[2], box[3]
            # x, y = box.get_xy_center()
            x , y = self.get_xy_center(box)
            center.x = x
            center.y = y
            center.theta = 0.0
            bbox.center = center

            # size_x, size_y = box.get_xy_extents()
            size_x, size_y = self.get_xy_extents(box)
            bbox.size_x = size_x
            bbox.size_y = size_y

            detection.bbox = bbox

            detections.append(detection)

        detection_array.header = Header()
        detection_array.header.stamp = rospy.get_rostime()
        detection_array.detections = detections
        # self.__del__()
        # self.cuda_ctx.pop()
        return YoloDetectResponse(detection_array)
    def get_xy_center(self,box):
        x = ((box[2] - box[0])/2) + box[0]
        y = ((box[3] - box[1])/2) + box[1]
        return x, y
    
    def get_xy_extents(self,box):
        x = box[2] - box[0]
        y = box[3] - box[1]
        return x, y
if __name__ == '__main__':
    rospy.init_node('yolo_server')
    
    try:
        ys = YoloServer()
        # rospy.loginfo("I'm still here")
    except rospy.ROSInterruptException:
        ys.__del__()
        pass

