; Auto-generated. Do not edit!


(cl:in-package kolt-msg)


;//! \htmlinclude ObjectLocation.msg.html

(cl:defclass <ObjectLocation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x_center
    :reader x_center
    :initarg :x_center
    :type cl:integer
    :initform 0)
   (y_center
    :reader y_center
    :initarg :y_center
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (bearing
    :reader bearing
    :initarg :bearing
    :type cl:float
    :initform 0.0)
   (true_range
    :reader true_range
    :initarg :true_range
    :type cl:float
    :initform 0.0)
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectLocation (<ObjectLocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectLocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectLocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kolt-msg:<ObjectLocation> is deprecated: use kolt-msg:ObjectLocation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:header-val is deprecated.  Use kolt-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x_center-val :lambda-list '(m))
(cl:defmethod x_center-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:x_center-val is deprecated.  Use kolt-msg:x_center instead.")
  (x_center m))

(cl:ensure-generic-function 'y_center-val :lambda-list '(m))
(cl:defmethod y_center-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:y_center-val is deprecated.  Use kolt-msg:y_center instead.")
  (y_center m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:distance-val is deprecated.  Use kolt-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'bearing-val :lambda-list '(m))
(cl:defmethod bearing-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:bearing-val is deprecated.  Use kolt-msg:bearing instead.")
  (bearing m))

(cl:ensure-generic-function 'true_range-val :lambda-list '(m))
(cl:defmethod true_range-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:true_range-val is deprecated.  Use kolt-msg:true_range instead.")
  (true_range m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <ObjectLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-msg:key-val is deprecated.  Use kolt-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectLocation>) ostream)
  "Serializes a message object of type '<ObjectLocation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'x_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bearing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'true_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectLocation>) istream)
  "Deserializes a message object of type '<ObjectLocation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_center) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_center) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bearing) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'true_range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectLocation>)))
  "Returns string type for a message object of type '<ObjectLocation>"
  "kolt/ObjectLocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectLocation)))
  "Returns string type for a message object of type 'ObjectLocation"
  "kolt/ObjectLocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectLocation>)))
  "Returns md5sum for a message object of type '<ObjectLocation>"
  "ae191473540928878a4478822d1a5e8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectLocation)))
  "Returns md5sum for a message object of type 'ObjectLocation"
  "ae191473540928878a4478822d1a5e8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectLocation>)))
  "Returns full string definition for message of type '<ObjectLocation>"
  (cl:format cl:nil "# Header~%Header header~%~%# Detection object center~%int32 x_center~%int32 y_center~%~%# Distance from the object~%float64 distance~%~%# Bearing of the TurtleBot~%float64 bearing~%~%# True range from the object~%float64 true_range~%~%# The object~%string key~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectLocation)))
  "Returns full string definition for message of type 'ObjectLocation"
  (cl:format cl:nil "# Header~%Header header~%~%# Detection object center~%int32 x_center~%int32 y_center~%~%# Distance from the object~%float64 distance~%~%# Bearing of the TurtleBot~%float64 bearing~%~%# True range from the object~%float64 true_range~%~%# The object~%string key~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectLocation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectLocation>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectLocation
    (cl:cons ':header (header msg))
    (cl:cons ':x_center (x_center msg))
    (cl:cons ':y_center (y_center msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':bearing (bearing msg))
    (cl:cons ':true_range (true_range msg))
    (cl:cons ':key (key msg))
))
