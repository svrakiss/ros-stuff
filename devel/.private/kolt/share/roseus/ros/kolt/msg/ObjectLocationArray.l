;; Auto-generated. Do not edit!


(when (boundp 'kolt::ObjectLocationArray)
  (if (not (find-package "KOLT"))
    (make-package "KOLT"))
  (shadow 'ObjectLocationArray (find-package "KOLT")))
(unless (find-package "KOLT::OBJECTLOCATIONARRAY")
  (make-package "KOLT::OBJECTLOCATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectLocationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kolt::ObjectLocationArray
  :super ros::object
  :slots (_header _objects ))

(defmethod kolt::ObjectLocationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance kolt::ObjectLocation :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; kolt/ObjectLocation[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; kolt/ObjectLocation[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; kolt/ObjectLocation[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance kolt::ObjectLocation :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kolt::ObjectLocationArray :md5sum-) "6783eacc0e047fccc11afcdc1829771d")
(setf (get kolt::ObjectLocationArray :datatype-) "kolt/ObjectLocationArray")
(setf (get kolt::ObjectLocationArray :definition-)
      "# A list of 2D detections, for a multi-object 2D detector.
# Header
Header header

# A list of object locations
ObjectLocation[] objects
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: kolt/ObjectLocation
# Header
Header header

# Detection object center
int32 x_center
int32 y_center

# Distance from the object
float64 distance

# Bearing of the TurtleBot
float64 bearing

# True range from the object
float64 true_range

# The object
string key
")



(provide :kolt/ObjectLocationArray "6783eacc0e047fccc11afcdc1829771d")


