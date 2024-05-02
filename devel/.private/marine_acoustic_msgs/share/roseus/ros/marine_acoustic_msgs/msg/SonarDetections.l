;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::SonarDetections)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'SonarDetections (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::SONARDETECTIONS")
  (make-package "MARINE_ACOUSTIC_MSGS::SONARDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude SonarDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_acoustic_msgs::SonarDetections
  :super ros::object
  :slots (_header _ping_info _flags _two_way_travel_times _tx_delays _intensities _tx_angles _rx_angles ))

(defmethod marine_acoustic_msgs::SonarDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ping_info __ping_info) (instance marine_acoustic_msgs::PingInfo :init))
    ((:flags __flags) ())
    ((:two_way_travel_times __two_way_travel_times) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tx_delays __tx_delays) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tx_angles __tx_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rx_angles __rx_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ping_info __ping_info)
   (setq _flags __flags)
   (setq _two_way_travel_times __two_way_travel_times)
   (setq _tx_delays __tx_delays)
   (setq _intensities __intensities)
   (setq _tx_angles __tx_angles)
   (setq _rx_angles __rx_angles)
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
  (:two_way_travel_times
   (&optional __two_way_travel_times)
   (if __two_way_travel_times (setq _two_way_travel_times __two_way_travel_times)) _two_way_travel_times)
  (:tx_delays
   (&optional __tx_delays)
   (if __tx_delays (setq _tx_delays __tx_delays)) _tx_delays)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:tx_angles
   (&optional __tx_angles)
   (if __tx_angles (setq _tx_angles __tx_angles)) _tx_angles)
  (:rx_angles
   (&optional __rx_angles)
   (if __rx_angles (setq _rx_angles __rx_angles)) _rx_angles)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marine_acoustic_msgs/PingInfo _ping_info
    (send _ping_info :serialization-length)
    ;; marine_acoustic_msgs/DetectionFlag[] _flags
    (apply #'+ (send-all _flags :serialization-length)) 4
    ;; float32[] _two_way_travel_times
    (* 4    (length _two_way_travel_times)) 4
    ;; float32[] _tx_delays
    (* 4    (length _tx_delays)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; float32[] _tx_angles
    (* 4    (length _tx_angles)) 4
    ;; float32[] _rx_angles
    (* 4    (length _rx_angles)) 4
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
     ;; float32[] _two_way_travel_times
     (write-long (length _two_way_travel_times) s)
     (dotimes (i (length _two_way_travel_times))
       (sys::poke (elt _two_way_travel_times i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _tx_delays
     (write-long (length _tx_delays) s)
     (dotimes (i (length _tx_delays))
       (sys::poke (elt _tx_delays i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _intensities
     (write-long (length _intensities) s)
     (dotimes (i (length _intensities))
       (sys::poke (elt _intensities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _tx_angles
     (write-long (length _tx_angles) s)
     (dotimes (i (length _tx_angles))
       (sys::poke (elt _tx_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rx_angles
     (write-long (length _rx_angles) s)
     (dotimes (i (length _rx_angles))
       (sys::poke (elt _rx_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _two_way_travel_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _two_way_travel_times (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _two_way_travel_times i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _tx_delays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tx_delays (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tx_delays i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _tx_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tx_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tx_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rx_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rx_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rx_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::SonarDetections :md5sum-) "588993519ccaab99fb0df80256b440ff")
(setf (get marine_acoustic_msgs::SonarDetections :datatype-) "marine_acoustic_msgs/SonarDetections")
(setf (get marine_acoustic_msgs::SonarDetections :definition-)
      "# Single ping from a multibeam sonar.
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

# Truly raw multibeam data uses travel times rather than ranges.
# reported in seconds
float32[] two_way_travel_times

# Multi-sector multibeams can transmit different sectors at different times
# The Reson doesn't but we include a TX delay for each beam anyway.
#
# Overall, therefore, our overall time is:
#
# header.stamp: TX cycle starts
# Each beam's TX time: header.stamp + txDelay[i]
# Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]
# reported in seconds
float32[] tx_delays

# Sonar-reported intensity.  Usually uncalibrated and crude
float32[] intensities

# Sonar-reported along-track steering angle (applied to tx beam)
# + forward, - aft for a downlooking sonar
# reported in radians
float32[] tx_angles

# Sonar-reported across-track steering angle (applied to rx beam)
# + to starboard, - to port for a downlooking sonar
# reported in radians
float32[] rx_angles

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

")



(provide :marine_acoustic_msgs/SonarDetections "588993519ccaab99fb0df80256b440ff")


