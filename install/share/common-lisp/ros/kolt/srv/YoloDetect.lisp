; Auto-generated. Do not edit!


(cl:in-package kolt-srv)


;//! \htmlinclude YoloDetect-request.msg.html

(cl:defclass <YoloDetect-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass YoloDetect-request (<YoloDetect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoloDetect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoloDetect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kolt-srv:<YoloDetect-request> is deprecated: use kolt-srv:YoloDetect-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <YoloDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-srv:image-val is deprecated.  Use kolt-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoloDetect-request>) ostream)
  "Serializes a message object of type '<YoloDetect-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoloDetect-request>) istream)
  "Deserializes a message object of type '<YoloDetect-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoloDetect-request>)))
  "Returns string type for a service object of type '<YoloDetect-request>"
  "kolt/YoloDetectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetect-request)))
  "Returns string type for a service object of type 'YoloDetect-request"
  "kolt/YoloDetectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoloDetect-request>)))
  "Returns md5sum for a message object of type '<YoloDetect-request>"
  "0c98907c2772621acd431740725bdb9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoloDetect-request)))
  "Returns md5sum for a message object of type 'YoloDetect-request"
  "0c98907c2772621acd431740725bdb9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoloDetect-request>)))
  "Returns full string definition for message of type '<YoloDetect-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoloDetect-request)))
  "Returns full string definition for message of type 'YoloDetect-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoloDetect-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoloDetect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YoloDetect-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude YoloDetect-response.msg.html

(cl:defclass <YoloDetect-response> (roslisp-msg-protocol:ros-message)
  ((detection
    :reader detection
    :initarg :detection
    :type vision_msgs-msg:Detection2DArray
    :initform (cl:make-instance 'vision_msgs-msg:Detection2DArray)))
)

(cl:defclass YoloDetect-response (<YoloDetect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoloDetect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoloDetect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kolt-srv:<YoloDetect-response> is deprecated: use kolt-srv:YoloDetect-response instead.")))

(cl:ensure-generic-function 'detection-val :lambda-list '(m))
(cl:defmethod detection-val ((m <YoloDetect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kolt-srv:detection-val is deprecated.  Use kolt-srv:detection instead.")
  (detection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoloDetect-response>) ostream)
  "Serializes a message object of type '<YoloDetect-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detection) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoloDetect-response>) istream)
  "Deserializes a message object of type '<YoloDetect-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detection) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoloDetect-response>)))
  "Returns string type for a service object of type '<YoloDetect-response>"
  "kolt/YoloDetectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetect-response)))
  "Returns string type for a service object of type 'YoloDetect-response"
  "kolt/YoloDetectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoloDetect-response>)))
  "Returns md5sum for a message object of type '<YoloDetect-response>"
  "0c98907c2772621acd431740725bdb9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoloDetect-response)))
  "Returns md5sum for a message object of type 'YoloDetect-response"
  "0c98907c2772621acd431740725bdb9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoloDetect-response>)))
  "Returns full string definition for message of type '<YoloDetect-response>"
  (cl:format cl:nil "vision_msgs/Detection2DArray detection~%~%================================================================================~%MSG: vision_msgs/Detection2DArray~%# A list of 2D detections, for a multi-object 2D detector.~%~%Header header~%~%# A list of the detected proposals. A multi-proposal detector might generate~%#   this list with many candidate detections generated from a single input.~%Detection2D[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vision_msgs/Detection2D~%# Defines a 2D detection result.~%#~%# This is similar to a 2D classification, but includes position information,~%#   allowing a classification result for a specific crop or image point to~%#   to be located in the larger image.~%~%Header header~%~%# Class probabilities~%ObjectHypothesisWithPose[] results~%~%# 2D bounding box surrounding the object.~%BoundingBox2D bbox~%~%# The 2D data that generated these results (i.e. region proposal cropped out of~%#   the image). Not required for all use cases, so it may be empty.~%sensor_msgs/Image source_img~%~%================================================================================~%MSG: vision_msgs/ObjectHypothesisWithPose~%# An object hypothesis that contains position information.~%~%# The unique numeric ID of the object class. To get additional information about~%#   this ID, such as its human-readable class name, listeners should perform a~%#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.~%int64 id~%~%# The probability or confidence value of the detected object. By convention,~%#   this value should lie in the range [0-1].~%float64 score~%~%# The 6D pose of the object hypothesis. This pose should be~%#   defined as the pose of some fixed reference point on the object, such a~%#   the geometric center of the bounding box or the center of mass of the~%#   object.~%# Note that this pose is not stamped; frame information can be defined by~%#   parent messages.~%# Also note that different classes predicted for the same input data may have~%#   different predicted 6D poses.~%geometry_msgs/PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: vision_msgs/BoundingBox2D~%# A 2D bounding box that can be rotated about its center.~%# All dimensions are in pixels, but represented using floating-point~%#   values to allow sub-pixel precision. If an exact pixel crop is required~%#   for a rotated bounding box, it can be calculated using Bresenham's line~%#   algorithm.~%~%# The 2D position (in pixels) and orientation of the bounding box center.~%geometry_msgs/Pose2D center~%~%# The size (in pixels) of the bounding box surrounding the object relative~%#   to the pose of its center.~%float64 size_x~%float64 size_y~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoloDetect-response)))
  "Returns full string definition for message of type 'YoloDetect-response"
  (cl:format cl:nil "vision_msgs/Detection2DArray detection~%~%================================================================================~%MSG: vision_msgs/Detection2DArray~%# A list of 2D detections, for a multi-object 2D detector.~%~%Header header~%~%# A list of the detected proposals. A multi-proposal detector might generate~%#   this list with many candidate detections generated from a single input.~%Detection2D[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vision_msgs/Detection2D~%# Defines a 2D detection result.~%#~%# This is similar to a 2D classification, but includes position information,~%#   allowing a classification result for a specific crop or image point to~%#   to be located in the larger image.~%~%Header header~%~%# Class probabilities~%ObjectHypothesisWithPose[] results~%~%# 2D bounding box surrounding the object.~%BoundingBox2D bbox~%~%# The 2D data that generated these results (i.e. region proposal cropped out of~%#   the image). Not required for all use cases, so it may be empty.~%sensor_msgs/Image source_img~%~%================================================================================~%MSG: vision_msgs/ObjectHypothesisWithPose~%# An object hypothesis that contains position information.~%~%# The unique numeric ID of the object class. To get additional information about~%#   this ID, such as its human-readable class name, listeners should perform a~%#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.~%int64 id~%~%# The probability or confidence value of the detected object. By convention,~%#   this value should lie in the range [0-1].~%float64 score~%~%# The 6D pose of the object hypothesis. This pose should be~%#   defined as the pose of some fixed reference point on the object, such a~%#   the geometric center of the bounding box or the center of mass of the~%#   object.~%# Note that this pose is not stamped; frame information can be defined by~%#   parent messages.~%# Also note that different classes predicted for the same input data may have~%#   different predicted 6D poses.~%geometry_msgs/PoseWithCovariance pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: vision_msgs/BoundingBox2D~%# A 2D bounding box that can be rotated about its center.~%# All dimensions are in pixels, but represented using floating-point~%#   values to allow sub-pixel precision. If an exact pixel crop is required~%#   for a rotated bounding box, it can be calculated using Bresenham's line~%#   algorithm.~%~%# The 2D position (in pixels) and orientation of the bounding box center.~%geometry_msgs/Pose2D center~%~%# The size (in pixels) of the bounding box surrounding the object relative~%#   to the pose of its center.~%float64 size_x~%float64 size_y~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoloDetect-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detection))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoloDetect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YoloDetect-response
    (cl:cons ':detection (detection msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YoloDetect)))
  'YoloDetect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YoloDetect)))
  'YoloDetect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoloDetect)))
  "Returns string type for a service object of type '<YoloDetect>"
  "kolt/YoloDetect")