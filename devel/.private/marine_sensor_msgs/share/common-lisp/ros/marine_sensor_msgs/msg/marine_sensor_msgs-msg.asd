
(cl:in-package :asdf)

(defsystem "marine_sensor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RadarEcho" :depends-on ("_package_RadarEcho"))
    (:file "_package_RadarEcho" :depends-on ("_package"))
    (:file "RadarSector" :depends-on ("_package_RadarSector"))
    (:file "_package_RadarSector" :depends-on ("_package"))
    (:file "TurbidityNTU" :depends-on ("_package_TurbidityNTU"))
    (:file "_package_TurbidityNTU" :depends-on ("_package"))
  ))