;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::SonarRanges)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'SonarRanges (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::SONARRANGES")
  (make-package "MARINE_ACOUSTIC_MSGS::SONARRANGES"))

(in-package "ROS")
;;//! \htmlinclude SonarRanges.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_acoustic_msgs::SonarRanges
  :super ros::object
  :slots (_header _ping_info _flags _transmit_delays _intensities _beam_unit_vec _ranges ))

(defmethod marine_acoustic_msgs::SonarRanges
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ping_info __ping_info) (instance marine_acoustic_msgs::PingInfo :init))
    ((:flags __flags) ())
    ((:transmit_delays __transmit_delays) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:beam_unit_vec __beam_unit_vec) ())
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ping_info __ping_info)
   (setq _flags __flags)
   (setq _transmit_delays __transmit_delays)
   (setq _intensities __intensities)
   (setq _beam_unit_vec __beam_unit_vec)
   (setq _ranges __ranges)
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
  (:flags
   (&rest __flags)
   (if (keywordp (car __flags))
       (send* _flags __flags)
     (progn
       (if __flags (setq _flags (car __flags)))
       _flags)))
  (:transmit_delays
   (&optional __transmit_delays)
   (if __transmit_delays (setq _transmit_delays __transmit_delays)) _transmit_delays)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:beam_unit_vec
   (&rest __beam_unit_vec)
   (if (keywordp (car __beam_unit_vec))
       (send* _beam_unit_vec __beam_unit_vec)
     (progn
       (if __beam_unit_vec (setq _beam_unit_vec (car __beam_unit_vec)))
       _beam_unit_vec)))
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marine_acoustic_msgs/PingInfo _ping_info
    (send _ping_info :serialization-length)
    ;; marine_acoustic_msgs/DetectionFlag[] _flags
    (apply #'+ (send-all _flags :serialization-length)) 4
    ;; float32[] _transmit_delays
    (* 4    (length _transmit_delays)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; geometry_msgs/Vector3[] _beam_unit_vec
    (apply #'+ (send-all _beam_unit_vec :serialization-length)) 4
    ;; float32[] _ranges
    (* 4    (length _ranges)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marine_acoustic_msgs/PingInfo _ping_info
       (send _ping_info :serialize s)
     ;; marine_acoustic_msgs/DetectionFlag[] _flags
     (write-long (length _flags) s)
     (dolist (elem _flags)
       (send elem :serialize s)
       )
     ;; float32[] _transmit_delays
     (write-long (length _transmit_delays) s)
     (dotimes (i (length _transmit_delays))
       (sys::poke (elt _transmit_delays i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _intensities
     (write-long (length _intensities) s)
     (dotimes (i (length _intensities))
       (sys::poke (elt _intensities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Vector3[] _beam_unit_vec
     (write-long (length _beam_unit_vec) s)
     (dolist (elem _beam_unit_vec)
       (send elem :serialize s)
       )
     ;; float32[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marine_acoustic_msgs/PingInfo _ping_info
     (send _ping_info :deserialize buf ptr-) (incf ptr- (send _ping_info :serialization-length))
   ;; marine_acoustic_msgs/DetectionFlag[] _flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flags (let (r) (dotimes (i n) (push (instance marine_acoustic_msgs::DetectionFlag :init) r)) r))
     (dolist (elem- _flags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _transmit_delays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transmit_delays (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _transmit_delays i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Vector3[] _beam_unit_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beam_unit_vec (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _beam_unit_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::SonarRanges :md5sum-) "be94c27604dc96cadea282ffc5faacb9")
(setf (get marine_acoustic_msgs::SonarRanges :datatype-) "marine_acoustic_msgs/SonarRanges")
(setf (get marine_acoustic_msgs::SonarRanges :definition-)
      "# Single ping from a profiling sonar.
#
# This message is modeled after WHOI's MultibeamRaw.msg, from the
# ds_multibeam_msgs package (released under a BSD license).
# Modifications were made by UW-APL.

# The header time should be the time the ping was transmitted, not
# the time the message was received.
# Note that these two could potentially be several seconds apart,
# especially in deep water.
std_msgs/Header header

PingInfo ping_info

# Constants declaring whether each beam is good or bad.
# This is implemented as an 8-bit masked value; it is possible for more
# than one thing to flag beams as bad. To check if a beam is good, simply
# check if it is zero.

DetectionFlag[] flags

# Multi-sector multibeams can transmit different sectors at different times
# The Reson doesn't but we include a TX delay for each beam anyway.
#
# Overall, therefore, our overall time is:
#
# header.stamp: TX cycle starts
# Each beam's TX time: header.stamp + txDelay[i]
# Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]
float32[] transmit_delays

# Sonar-reported intensity.  Usually uncalibrated and crude
float32[] intensities

geometry_msgs/Vector3[] beam_unit_vec

float32[] ranges

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
MSG: marine_acoustic_msgs/DetectionFlag
# Beam is OK
uint8 DETECT_OK = 0
# Beam is flagged as bad by the sonar.  Think hard before second-guessing
uint8 DETECT_BAD_SONAR = 1
# Beam is flagged as bad by some automated filter applied during processing.
uint8 DETECT_BAD_FILTER = 2
# Beam is flagged as bad by the user. This is probably not happening in
# realtime, but is included here so the same message can be used throughout
# a post-processing pipeline.
uint8 DETECT_BAD_USER = 4

# These arrays should have the same dimensions, and should match
# the number of beams for this sonar.
#
# Some fields are optional.  Those should have 0 length.

# Flag values for every beam
uint8 flag

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
")



(provide :marine_acoustic_msgs/SonarRanges "be94c27604dc96cadea282ffc5faacb9")


