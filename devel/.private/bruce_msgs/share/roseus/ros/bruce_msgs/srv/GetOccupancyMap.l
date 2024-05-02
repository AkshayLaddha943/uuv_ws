;; Auto-generated. Do not edit!


(when (boundp 'bruce_msgs::GetOccupancyMap)
  (if (not (find-package "BRUCE_MSGS"))
    (make-package "BRUCE_MSGS"))
  (shadow 'GetOccupancyMap (find-package "BRUCE_MSGS")))
(unless (find-package "BRUCE_MSGS::GETOCCUPANCYMAP")
  (make-package "BRUCE_MSGS::GETOCCUPANCYMAP"))
(unless (find-package "BRUCE_MSGS::GETOCCUPANCYMAPREQUEST")
  (make-package "BRUCE_MSGS::GETOCCUPANCYMAPREQUEST"))
(unless (find-package "BRUCE_MSGS::GETOCCUPANCYMAPRESPONSE")
  (make-package "BRUCE_MSGS::GETOCCUPANCYMAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass bruce_msgs::GetOccupancyMapRequest
  :super ros::object
  :slots (_frames _resolution ))

(defmethod bruce_msgs::GetOccupancyMapRequest
  (:init
   (&key
    ((:frames __frames) (make-array 0 :initial-element 0 :element-type :integer))
    ((:resolution __resolution) 0.0)
    )
   (send-super :init)
   (setq _frames __frames)
   (setq _resolution (float __resolution))
   self)
  (:frames
   (&optional __frames)
   (if __frames (setq _frames __frames)) _frames)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:serialization-length
   ()
   (+
    ;; uint32[] _frames
    (* 4    (length _frames)) 4
    ;; float32 _resolution
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _frames
     (write-long (length _frames) s)
     (dotimes (i (length _frames))
       (write-long (elt _frames i) s)
       )
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frames (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _frames i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bruce_msgs::GetOccupancyMapResponse
  :super ros::object
  :slots (_occ ))

(defmethod bruce_msgs::GetOccupancyMapResponse
  (:init
   (&key
    ((:occ __occ) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _occ __occ)
   self)
  (:occ
   (&rest __occ)
   (if (keywordp (car __occ))
       (send* _occ __occ)
     (progn
       (if __occ (setq _occ (car __occ)))
       _occ)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _occ
    (send _occ :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _occ
       (send _occ :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _occ
     (send _occ :deserialize buf ptr-) (incf ptr- (send _occ :serialization-length))
   ;;
   self)
  )

(defclass bruce_msgs::GetOccupancyMap
  :super ros::object
  :slots ())

(setf (get bruce_msgs::GetOccupancyMap :md5sum-) "85f4445a9d44297d096f4d7339d7a4ce")
(setf (get bruce_msgs::GetOccupancyMap :datatype-) "bruce_msgs/GetOccupancyMap")
(setf (get bruce_msgs::GetOccupancyMap :request) bruce_msgs::GetOccupancyMapRequest)
(setf (get bruce_msgs::GetOccupancyMap :response) bruce_msgs::GetOccupancyMapResponse)

(defmethod bruce_msgs::GetOccupancyMapRequest
  (:response () (instance bruce_msgs::GetOccupancyMapResponse :init)))

(setf (get bruce_msgs::GetOccupancyMapRequest :md5sum-) "85f4445a9d44297d096f4d7339d7a4ce")
(setf (get bruce_msgs::GetOccupancyMapRequest :datatype-) "bruce_msgs/GetOccupancyMapRequest")
(setf (get bruce_msgs::GetOccupancyMapRequest :definition-)
      "uint32[] frames
float32 resolution
---
nav_msgs/OccupancyGrid occ

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

(setf (get bruce_msgs::GetOccupancyMapResponse :md5sum-) "85f4445a9d44297d096f4d7339d7a4ce")
(setf (get bruce_msgs::GetOccupancyMapResponse :datatype-) "bruce_msgs/GetOccupancyMapResponse")
(setf (get bruce_msgs::GetOccupancyMapResponse :definition-)
      "uint32[] frames
float32 resolution
---
nav_msgs/OccupancyGrid occ

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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



(provide :bruce_msgs/GetOccupancyMap "85f4445a9d44297d096f4d7339d7a4ce")


