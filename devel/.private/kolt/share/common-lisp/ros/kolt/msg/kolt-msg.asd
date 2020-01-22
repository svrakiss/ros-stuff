
(cl:in-package :asdf)

(defsystem "kolt-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectLocation" :depends-on ("_package_ObjectLocation"))
    (:file "_package_ObjectLocation" :depends-on ("_package"))
    (:file "ObjectLocationArray" :depends-on ("_package_ObjectLocationArray"))
    (:file "_package_ObjectLocationArray" :depends-on ("_package"))
  ))