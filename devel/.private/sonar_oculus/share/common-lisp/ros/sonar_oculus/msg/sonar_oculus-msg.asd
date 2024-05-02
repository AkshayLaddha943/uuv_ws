
(cl:in-package :asdf)

(defsystem "sonar_oculus-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "OculusFire" :depends-on ("_package_OculusFire"))
    (:file "_package_OculusFire" :depends-on ("_package"))
    (:file "OculusPing" :depends-on ("_package_OculusPing"))
    (:file "_package_OculusPing" :depends-on ("_package"))
    (:file "OculusPingUncompressed" :depends-on ("_package_OculusPingUncompressed"))
    (:file "_package_OculusPingUncompressed" :depends-on ("_package"))
  ))