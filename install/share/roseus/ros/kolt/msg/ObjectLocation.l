;; Auto-generated. Do not edit!


(when (boundp 'kolt::ObjectLocation)
  (if (not (find-package "KOLT"))
    (make-package "KOLT"))
  (shadow 'ObjectLocation (find-package "KOLT")))
(unless (find-package "KOLT::OBJECTLOCATION")
  (make-package "KOLT::OBJECTLOCATION"))

(in-package "ROS")
;;//! \htmlinclude ObjectLocation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kolt::ObjectLocation
  :super ros::object
  :slots (_header _x_center _y_center _distance _bearing _true_range _key ))

(defmethod kolt::ObjectLocation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_center __x_center) 0)
    ((:y_center __y_center) 0)
    ((:distance __distance) 0.0)
    ((:bearing __bearing) 0.0)
    ((:true_range __true_range) 0.0)
    ((:key __key) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_center (round __x_center))
   (setq _y_center (round __y_center))
   (setq _distance (float __distance))
   (setq _bearing (float __bearing))
   (setq _true_range (float __true_range))
   (setq _key (string __key))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_center
   (&optional __x_center)
   (if __x_center (setq _x_center __x_center)) _x_center)
  (:y_center
   (&optional __y_center)
   (if __y_center (setq _y_center __y_center)) _y_center)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:true_range
   (&optional __true_range)
   (if __true_range (setq _true_range __true_range)) _true_range)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _x_center
    4
    ;; int32 _y_center
    4
    ;; float64 _distance
    8
    ;; float64 _bearing
    8
    ;; float64 _true_range
    8
    ;; string _key
    4 (length _key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _x_center
       (write-long _x_center s)
     ;; int32 _y_center
       (write-long _y_center s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _true_range
       (sys::poke _true_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _x_center
     (setq _x_center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_center
     (setq _y_center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bearing
     (setq _bearing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _true_range
     (setq _true_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get kolt::ObjectLocation :md5sum-) "ae191473540928878a4478822d1a5e8b")
(setf (get kolt::ObjectLocation :datatype-) "kolt/ObjectLocation")
(setf (get kolt::ObjectLocation :definition-)
      "# Header
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

")



(provide :kolt/ObjectLocation "ae191473540928878a4478822d1a5e8b")


