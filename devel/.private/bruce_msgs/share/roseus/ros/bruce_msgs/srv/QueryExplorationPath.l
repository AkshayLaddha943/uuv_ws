;; Auto-generated. Do not edit!


(when (boundp 'bruce_msgs::QueryExplorationPath)
  (if (not (find-package "BRUCE_MSGS"))
    (make-package "BRUCE_MSGS"))
  (shadow 'QueryExplorationPath (find-package "BRUCE_MSGS")))
(unless (find-package "BRUCE_MSGS::QUERYEXPLORATIONPATH")
  (make-package "BRUCE_MSGS::QUERYEXPLORATIONPATH"))
(unless (find-package "BRUCE_MSGS::QUERYEXPLORATIONPATHREQUEST")
  (make-package "BRUCE_MSGS::QUERYEXPLORATIONPATHREQUEST"))
(unless (find-package "BRUCE_MSGS::QUERYEXPLORATIONPATHRESPONSE")
  (make-package "BRUCE_MSGS::QUERYEXPLORATIONPATHRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass bruce_msgs::QueryExplorationPathRequest
  :super ros::object
  :slots ())

(defmethod bruce_msgs::QueryExplorationPathRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bruce_msgs::QueryExplorationPathResponse
  :super ros::object
  :slots (_path _type ))

(defmethod bruce_msgs::QueryExplorationPathResponse
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:type __type) "")
    )
   (send-super :init)
   (setq _path __path)
   (setq _type (string __type))
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bruce_msgs::QueryExplorationPath
  :super ros::object
  :slots ())

(setf (get bruce_msgs::QueryExplorationPath :md5sum-) "d6d0f6f88862321f9f30fe0e54019c85")
(setf (get bruce_msgs::QueryExplorationPath :datatype-) "bruce_msgs/QueryExplorationPath")
(setf (get bruce_msgs::QueryExplorationPath :request) bruce_msgs::QueryExplorationPathRequest)
(setf (get bruce_msgs::QueryExplorationPath :response) bruce_msgs::QueryExplorationPathResponse)

(defmethod bruce_msgs::QueryExplorationPathRequest
  (:response () (instance bruce_msgs::QueryExplorationPathResponse :init)))

(setf (get bruce_msgs::QueryExplorationPathRequest :md5sum-) "d6d0f6f88862321f9f30fe0e54019c85")
(setf (get bruce_msgs::QueryExplorationPathRequest :datatype-) "bruce_msgs/QueryExplorationPathRequest")
(setf (get bruce_msgs::QueryExplorationPathRequest :definition-)
      "# Empty request


---

nav_msgs/Path path
string type


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get bruce_msgs::QueryExplorationPathResponse :md5sum-) "d6d0f6f88862321f9f30fe0e54019c85")
(setf (get bruce_msgs::QueryExplorationPathResponse :datatype-) "bruce_msgs/QueryExplorationPathResponse")
(setf (get bruce_msgs::QueryExplorationPathResponse :definition-)
      "# Empty request


---

nav_msgs/Path path
string type


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :bruce_msgs/QueryExplorationPath "d6d0f6f88862321f9f30fe0e54019c85")


