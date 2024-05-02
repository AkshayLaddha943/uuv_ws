;; Auto-generated. Do not edit!


(when (boundp 'marine_sensor_msgs::RadarSector)
  (if (not (find-package "MARINE_SENSOR_MSGS"))
    (make-package "MARINE_SENSOR_MSGS"))
  (shadow 'RadarSector (find-package "MARINE_SENSOR_MSGS")))
(unless (find-package "MARINE_SENSOR_MSGS::RADARSECTOR")
  (make-package "MARINE_SENSOR_MSGS::RADARSECTOR"))

(in-package "ROS")
;;//! \htmlinclude RadarSector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_sensor_msgs::RadarSector
  :super ros::object
  :slots (_header _angle_start _angle_increment _time_increment _scan_time _range_min _range_max _intensities ))

(defmethod marine_sensor_msgs::RadarSector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angle_start __angle_start) 0.0)
    ((:angle_increment __angle_increment) 0.0)
    ((:time_increment __time_increment) (instance ros::time :init))
    ((:scan_time __scan_time) (instance ros::time :init))
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:intensities __intensities) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _angle_start (float __angle_start))
   (setq _angle_increment (float __angle_increment))
   (setq _time_increment __time_increment)
   (setq _scan_time __scan_time)
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _intensities __intensities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angle_start
   (&optional __angle_start)
   (if __angle_start (setq _angle_start __angle_start)) _angle_start)
  (:angle_increment
   (&optional __angle_increment)
   (if __angle_increment (setq _angle_increment __angle_increment)) _angle_increment)
  (:time_increment
   (&optional __time_increment)
   (if __time_increment (setq _time_increment __time_increment)) _time_increment)
  (:scan_time
   (&optional __scan_time)
   (if __scan_time (setq _scan_time __scan_time)) _scan_time)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:intensities
   (&rest __intensities)
   (if (keywordp (car __intensities))
       (send* _intensities __intensities)
     (progn
       (if __intensities (setq _intensities (car __intensities)))
       _intensities)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _angle_start
    4
    ;; float32 _angle_increment
    4
    ;; duration _time_increment
    8
    ;; duration _scan_time
    8
    ;; float32 _range_min
    4
    ;; float32 _range_max
    4
    ;; marine_sensor_msgs/RadarEcho[] _intensities
    (apply #'+ (send-all _intensities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _angle_start
       (sys::poke _angle_start (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_increment
       (sys::poke _angle_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; duration _time_increment
       (write-long (send _time_increment :sec) s) (write-long (send _time_increment :nsec) s)
     ;; duration _scan_time
       (write-long (send _scan_time :sec) s) (write-long (send _scan_time :nsec) s)
     ;; float32 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; marine_sensor_msgs/RadarEcho[] _intensities
     (write-long (length _intensities) s)
     (dolist (elem _intensities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _angle_start
     (setq _angle_start (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_increment
     (setq _angle_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; duration _time_increment
     (send _time_increment :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_increment :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _scan_time
     (send _scan_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _scan_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _range_min
     (setq _range_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_max
     (setq _range_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; marine_sensor_msgs/RadarEcho[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (let (r) (dotimes (i n) (push (instance marine_sensor_msgs::RadarEcho :init) r)) r))
     (dolist (elem- _intensities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marine_sensor_msgs::RadarSector :md5sum-) "df60b1c17b5e9990cfefd1e37ab4e5a8")
(setf (get marine_sensor_msgs::RadarSector :datatype-) "marine_sensor_msgs/RadarSector")
(setf (get marine_sensor_msgs::RadarSector :definition-)
      "# A collection of marine radar rays, typically covering a contiguous
# arc of a full circle.

# timestamp in the header is the acquisition time of
# the first ray in the sector.
#
# In frame frame_id, angles are measured around
# the positive Z axis (counterclockwise, if Z is up)
# with zero angle being forward along the X axis
Header header

# start angle of this sector [rad]
float32 angle_start

# angular distance between rays [rad]
float32 angle_increment

# time between rays [seconds] - if your scanner
# is moving, this can be used in interpolating
# position of 3d points
duration time_increment

# time between two consecutive complete scans
# or revolutions [seconds]
# Warning: On hardware that doesn't provide a timestamp,
# time-related fields may be estimated and vary
# from sector to sector as estimates are updated
duration scan_time

# range of the first sample in each ray [m]
float32 range_min

# range of the last sample in each ray [m]
float32 range_max

# intensity data [device-specific units].
RadarEcho[] intensities

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
MSG: marine_sensor_msgs/RadarEcho
# This message is a submessage of RadarSector and is not intended
# to be used separately. It represents intensities from a
# single ray.

# Series of intensities from closest to farthest
# along a given angle increment. [device-specific units]
float32[] echoes

")



(provide :marine_sensor_msgs/RadarSector "df60b1c17b5e9990cfefd1e37ab4e5a8")


