
(cl:in-package :asdf)

(defsystem "bruce_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :bruce_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetOccupancyMap" :depends-on ("_package_GetOccupancyMap"))
    (:file "_package_GetOccupancyMap" :depends-on ("_package"))
    (:file "PredictSLAMUpdate" :depends-on ("_package_PredictSLAMUpdate"))
    (:file "_package_PredictSLAMUpdate" :depends-on ("_package"))
    (:file "QueryExplorationPath" :depends-on ("_package_QueryExplorationPath"))
    (:file "_package_QueryExplorationPath" :depends-on ("_package"))
  ))