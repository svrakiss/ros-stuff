
(cl:in-package :asdf)

(defsystem "kolt-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :vision_msgs-msg
)
  :components ((:file "_package")
    (:file "YoloDetect" :depends-on ("_package_YoloDetect"))
    (:file "_package_YoloDetect" :depends-on ("_package"))
  ))