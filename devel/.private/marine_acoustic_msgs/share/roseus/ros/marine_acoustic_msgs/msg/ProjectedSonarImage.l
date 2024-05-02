;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::ProjectedSonarImage)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'ProjectedSonarImage (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::PROJECTEDSONARIMAGE")
  (make-package "MARINE_ACOUSTIC_MSGS::PROJECTEDSONARIMAGE"))

(in-package "ROS")
;;//! \htmlinclude ProjectedSonarImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_acoustic_msgs::ProjectedSonarImage
  :super ros::object
  :slots (_header _ping_info _beam_directions _ranges _image ))

(defmethod marine_acoustic_msgs::ProjectedSonarImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ping_info __ping_info) (instance marine_acoustic_msgs::PingInfo :init))
    ((:beam_directions __beam_directions) ())
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:image __image) (instance marine_acoustic_msgs::SonarImageData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ping_info __ping_info)
   (setq _beam_directions __beam_directions)
   (setq _ranges __ranges)
   (setq _image __image)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ping_info
   (&rest __ping_info)
   (if (keywordp (car __ping_info))
       (send* _ping_info __ping_info)
     (progn
       (if __ping_info (setq _ping_info (car __ping_info)))
       _ping_info)))
  (:beam_directions
   (&rest __beam_directions)
   (if (keywordp (car __beam_directions))
       (send* _beam_directions __beam_directions)
     (progn
       (if __beam_directions (setq _beam_directions (car __beam_directions)))
       _beam_directions)))
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marine_acoustic_msgs/PingInfo _ping_info
    (send _ping_info :serialization-length)
    ;; geometry_msgs/Vector3[] _beam_directions
    (apply #'+ (send-all _beam_directions :serialization-length)) 4
    ;; float32[] _ranges
    (* 4    (length _ranges)) 4
    ;; marine_acoustic_msgs/SonarImageData _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marine_acoustic_msgs/PingInfo _ping_info
       (send _ping_info :serialize s)
     ;; geometry_msgs/Vector3[] _beam_directions
     (write-long (length _beam_directions) s)
     (dolist (elem _beam_directions)
       (send elem :serialize s)
       )
     ;; float32[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; marine_acoustic_msgs/SonarImageData _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marine_acoustic_msgs/PingInfo _ping_info
     (send _ping_info :deserialize buf ptr-) (incf ptr- (send _ping_info :serialization-length))
   ;; geometry_msgs/Vector3[] _beam_directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beam_directions (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _beam_directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; marine_acoustic_msgs/SonarImageData _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::ProjectedSonarImage :md5sum-) "c72fc8e29ab227a547720a36666022fd")
(setf (get marine_acoustic_msgs::ProjectedSonarImage :datatype-) "marine_acoustic_msgs/ProjectedSonarImage")
(setf (get marine_acoustic_msgs::ProjectedSonarImage :definition-)
      "# Single scan from an imaging sonar
#
# The Z-axis is centered in the plane of the fan (\"forward\"), with X up,
# in order to be consistent with the NED for traditional multibeam profilers.
#
# For sonars with a 1D array, the beams lie on the Y-Z plane, and
# and each beam has an azimuth (rotation about X) value.  Zero azimuth
# is in the direction of the Z-axis, typically \"straight out\" from the sonar.
# Elevation is the orthogonal direction (rotation about Y),
# often termed the \"vertical aperture\"

# The header time should be the time the ping was transmitted, not
# the time the message was received.
# Note that these two could potentially be several seconds apart,
# especially in deep water.
std_msgs/Header header

PingInfo ping_info

geometry_msgs/Vector3[] beam_directions

# Center of each range bin in meters. Note this these may not be equally
# spaced, and do not necessarily start at zero range.
float32[] ranges

SonarImageData image

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
MSG: marine_acoustic_msgs/PingInfo
# Center frequency of sonar in Hz
# Set to 0 if unavailable
float32 frequency

# Speed of sound (m/s) used to calculate ranges;
# Set to 0 if unavailable
float32 sound_speed

# Sonar reported -3db beamwidths
# May be empty if not reported
# reported in radians
float32[] tx_beamwidths
float32[] rx_beamwidths

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: marine_acoustic_msgs/SonarImageData
bool    is_bigendian

uint32  DTYPE_UINT8 = 0
uint32  DTYPE_INT8 = 1
uint32  DTYPE_UINT16 = 2
uint32  DTYPE_INT16 = 3
uint32  DTYPE_UINT32 = 4
uint32  DTYPE_INT32 = 5
uint32  DTYPE_UINT64 = 6
uint32  DTYPE_INT64 = 7
uint32  DTYPE_FLOAT32 = 8
uint32  DTYPE_FLOAT64 = 9

uint32  dtype

# the number of beams associated with the image
uint32 beam_count

# The actually pixel data in row-major (beam_index major) format
uint8[] data

")



(provide :marine_acoustic_msgs/ProjectedSonarImage "c72fc8e29ab227a547720a36666022fd")


