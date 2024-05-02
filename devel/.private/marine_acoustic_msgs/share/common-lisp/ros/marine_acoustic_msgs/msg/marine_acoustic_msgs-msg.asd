
(cl:in-package :asdf)

(defsystem "marine_acoustic_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectionFlag" :depends-on ("_package_DetectionFlag"))
    (:file "_package_DetectionFlag" :depends-on ("_package"))
    (:file "Dvl" :depends-on ("_package_Dvl"))
    (:file "_package_Dvl" :depends-on ("_package"))
    (:file "PingInfo" :depends-on ("_package_PingInfo"))
    (:file "_package_PingInfo" :depends-on ("_package"))
    (:file "ProjectedSonarImage" :depends-on ("_package_ProjectedSonarImage"))
    (:file "_package_ProjectedSonarImage" :depends-on ("_package"))
    (:file "RawSonarImage" :depends-on ("_package_RawSonarImage"))
    (:file "_package_RawSonarImage" :depends-on ("_package"))
    (:file "SonarDetections" :depends-on ("_package_SonarDetections"))
    (:file "_package_SonarDetections" :depends-on ("_package"))
    (:file "SonarImageData" :depends-on ("_package_SonarImageData"))
    (:file "_package_SonarImageData" :depends-on ("_package"))
    (:file "SonarRanges" :depends-on ("_package_SonarRanges"))
    (:file "_package_SonarRanges" :depends-on ("_package"))
  ))