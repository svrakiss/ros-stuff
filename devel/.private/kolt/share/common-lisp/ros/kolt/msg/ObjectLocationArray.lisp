; Auto-generated. Do not edit!


(cl:in-package kolt-msg)


;//! \htmlinclude ObjectLocationArray.msg.html

(cl:defclass <ObjectLocationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector kolt-msg:ObjectLocation)
   :initform (cl:make-array 0 :element-type 'kolt-msg:ObjectLocation :initial-element (cl:make-instance 'kolt-msg:ObjectLocation))))
)

(cl:defclass ObjectLocationArray (<ObjectLocationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectLocationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectLocationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kolt-msg:<ObjectLocationArray> is deprecated: use kolt-msg:ObjectLocationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectLocationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:header-val is deprecated.  Use kolt-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectLocationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:objects-val is deprecated.  Use kolt-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectLocationArray>) ostream)
  "Serializes a message object of type '<ObjectLocationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectLocationArray>) istream)
  "Deserializes a message object of type '<ObjectLocationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kolt-msg:ObjectLocation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectLocationArray>)))
  "Returns string type for a message object of type '<ObjectLocationArray>"
  "kolt/ObjectLocationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectLocationArray)))
  "Returns string type for a message object of type 'ObjectLocationArray"
  "kolt/ObjectLocationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectLocationArray>)))
  "Returns md5sum for a message object of type '<ObjectLocationArray>"
  "6783eacc0e047fccc11afcdc1829771d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectLocationArray)))
  "Returns md5sum for a message object of type 'ObjectLocationArray"
  "6783eacc0e047fccc11afcdc1829771d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectLocationArray>)))
  "Returns full string definition for message of type '<ObjectLocationArray>"
  (cl:format cl:nil "# A list of 2D detections, for a multi-object 2D detector.~%# Header~%Header header~%~%# A list of object locations~%ObjectLocation[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: kolt/ObjectLocation~%# Header~%Header header~%~%# Detection object center~%int32 x_center~%int32 y_center~%~%# Distance from the object~%float64 distance~%~%# Bearing of the TurtleBot~%float64 bearing~%~%# True range from the object~%float64 true_range~%~%# The object~%string key~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectLocationArray)))
  "Returns full string definition for message of type 'ObjectLocationArray"
  (cl:format cl:nil "# A list of 2D detections, for a multi-object 2D detector.~%# Header~%Header header~%~%# A list of object locations~%ObjectLocation[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: kolt/ObjectLocation~%# Header~%Header header~%~%# Detection object center~%int32 x_center~%int32 y_center~%~%# Distance from the object~%float64 distance~%~%# Bearing of the TurtleBot~%float64 bearing~%~%# True range from the object~%float64 true_range~%~%# The object~%string key~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectLocationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectLocationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectLocationArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
