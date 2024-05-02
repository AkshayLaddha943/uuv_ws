;; Auto-generated. Do not edit!


(when (boundp 'bruce_msgs::PredictSLAMUpdate)
  (if (not (find-package "BRUCE_MSGS"))
    (make-package "BRUCE_MSGS"))
  (shadow 'PredictSLAMUpdate (find-package "BRUCE_MSGS")))
(unless (find-package "BRUCE_MSGS::PREDICTSLAMUPDATE")
  (make-package "BRUCE_MSGS::PREDICTSLAMUPDATE"))
(unless (find-package "BRUCE_MSGS::PREDICTSLAMUPDATEREQUEST")
  (make-package "BRUCE_MSGS::PREDICTSLAMUPDATEREQUEST"))
(unless (find-package "BRUCE_MSGS::PREDICTSLAMUPDATERESPONSE")
  (make-package "BRUCE_MSGS::PREDICTSLAMUPDATERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass bruce_msgs::PredictSLAMUpdateRequest
  :super ros::object
  :slots (_key _return_isam2_update _paths ))

(defmethod bruce_msgs::PredictSLAMUpdateRequest
  (:init
   (&key
    ((:key __key) 0)
    ((:return_isam2_update __return_isam2_update) nil)
    ((:paths __paths) ())
    )
   (send-super :init)
   (setq _key (round __key))
   (setq _return_isam2_update __return_isam2_update)
   (setq _paths __paths)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:return_isam2_update
   (&optional (__return_isam2_update :null))
   (if (not (eq __return_isam2_update :null)) (setq _return_isam2_update __return_isam2_update)) _return_isam2_update)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; uint32 _key
    4
    ;; bool _return_isam2_update
    1
    ;; nav_msgs/Path[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _key
       (write-long _key s)
     ;; bool _return_isam2_update
       (if _return_isam2_update (write-byte -1 s) (write-byte 0 s))
     ;; nav_msgs/Path[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _return_isam2_update
     (setq _return_isam2_update (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; nav_msgs/Path[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance nav_msgs::Path :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass bruce_msgs::PredictSLAMUpdateResponse
  :super ros::object
  :slots (_isam2_updates _keyframes ))

(defmethod bruce_msgs::PredictSLAMUpdateResponse
  (:init
   (&key
    ((:isam2_updates __isam2_updates) ())
    ((:keyframes __keyframes) ())
    )
   (send-super :init)
   (setq _isam2_updates __isam2_updates)
   (setq _keyframes __keyframes)
   self)
  (:isam2_updates
   (&rest __isam2_updates)
   (if (keywordp (car __isam2_updates))
       (send* _isam2_updates __isam2_updates)
     (progn
       (if __isam2_updates (setq _isam2_updates (car __isam2_updates)))
       _isam2_updates)))
  (:keyframes
   (&rest __keyframes)
   (if (keywordp (car __keyframes))
       (send* _keyframes __keyframes)
     (progn
       (if __keyframes (setq _keyframes (car __keyframes)))
       _keyframes)))
  (:serialization-length
   ()
   (+
    ;; bruce_msgs/ISAM2Update[] _isam2_updates
    (apply #'+ (send-all _isam2_updates :serialization-length)) 4
    ;; nav_msgs/Path[] _keyframes
    (apply #'+ (send-all _keyframes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bruce_msgs/ISAM2Update[] _isam2_updates
     (write-long (length _isam2_updates) s)
     (dolist (elem _isam2_updates)
       (send elem :serialize s)
       )
     ;; nav_msgs/Path[] _keyframes
     (write-long (length _keyframes) s)
     (dolist (elem _keyframes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bruce_msgs/ISAM2Update[] _isam2_updates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _isam2_updates (let (r) (dotimes (i n) (push (instance bruce_msgs::ISAM2Update :init) r)) r))
     (dolist (elem- _isam2_updates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; nav_msgs/Path[] _keyframes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keyframes (let (r) (dotimes (i n) (push (instance nav_msgs::Path :init) r)) r))
     (dolist (elem- _keyframes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass bruce_msgs::PredictSLAMUpdate
  :super ros::object
  :slots ())

(setf (get bruce_msgs::PredictSLAMUpdate :md5sum-) "18a5f92af2249a995192f2aa3a6de24b")
(setf (get bruce_msgs::PredictSLAMUpdate :datatype-) "bruce_msgs/PredictSLAMUpdate")
(setf (get bruce_msgs::PredictSLAMUpdate :request) bruce_msgs::PredictSLAMUpdateRequest)
(setf (get bruce_msgs::PredictSLAMUpdate :response) bruce_msgs::PredictSLAMUpdateResponse)

(defmethod bruce_msgs::PredictSLAMUpdateRequest
  (:response () (instance bruce_msgs::PredictSLAMUpdateResponse :init)))

(setf (get bruce_msgs::PredictSLAMUpdateRequest :md5sum-) "18a5f92af2249a995192f2aa3a6de24b")
(setf (get bruce_msgs::PredictSLAMUpdateRequest :datatype-) "bruce_msgs/PredictSLAMUpdateRequest")
(setf (get bruce_msgs::PredictSLAMUpdateRequest :definition-)
      "uint32 key
bool return_isam2_update
nav_msgs/Path[] paths

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
---
bruce_msgs/ISAM2Update[] isam2_updates
nav_msgs/Path[] keyframes


================================================================================
MSG: bruce_msgs/ISAM2Update
Header header
uint32 key
uint8[] isam2
uint8[] graph
uint8[] values

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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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

(setf (get bruce_msgs::PredictSLAMUpdateResponse :md5sum-) "18a5f92af2249a995192f2aa3a6de24b")
(setf (get bruce_msgs::PredictSLAMUpdateResponse :datatype-) "bruce_msgs/PredictSLAMUpdateResponse")
(setf (get bruce_msgs::PredictSLAMUpdateResponse :definition-)
      "uint32 key
bool return_isam2_update
nav_msgs/Path[] paths

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
---
bruce_msgs/ISAM2Update[] isam2_updates
nav_msgs/Path[] keyframes


================================================================================
MSG: bruce_msgs/ISAM2Update
Header header
uint32 key
uint8[] isam2
uint8[] graph
uint8[] values

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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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



(provide :bruce_msgs/PredictSLAMUpdate "18a5f92af2249a995192f2aa3a6de24b")


