
(cl:in-package :asdf)

(defsystem "bruce_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :sonar_oculus-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ISAM2Update" :depends-on ("_package_ISAM2Update"))
    (:file "_package_ISAM2Update" :depends-on ("_package"))
    (:file "keyframe_image" :depends-on ("_package_keyframe_image"))
    (:file "_package_keyframe_image" :depends-on ("_package"))
    (:file "posehistory" :depends-on ("_package_posehistory"))
    (:file "_package_posehistory" :depends-on ("_package"))
  ))