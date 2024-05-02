
(cl:in-package :asdf)

(defsystem "kvh_gyro-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gyro" :depends-on ("_package_gyro"))
    (:file "_package_gyro" :depends-on ("_package"))
  ))