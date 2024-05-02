;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::RawSonarImage)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'RawSonarImage (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::RAWSONARIMAGE")
  (make-package "MARINE_ACOUSTIC_MSGS::RAWSONARIMAGE"))

(in-package "ROS")
;;//! \htmlinclude RawSonarImage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_acoustic_msgs::RawSonarImage
  :super ros::object
  :slots (_header _ping_info _sample_rate _samples_per_beam _sample0 _tx_delays _tx_angles _rx_angles _image ))

(defmethod marine_acoustic_msgs::RawSonarImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ping_info __ping_info) (instance marine_acoustic_msgs::PingInfo :init))
    ((:sample_rate __sample_rate) 0.0)
    ((:samples_per_beam __samples_per_beam) 0)
    ((:sample0 __sample0) 0)
    ((:tx_delays __tx_delays) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tx_angles __tx_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rx_angles __rx_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:image __image) (instance marine_acoustic_msgs::SonarImageData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ping_info __ping_info)
   (setq _sample_rate (float __sample_rate))
   (setq _samples_per_beam (round __samples_per_beam))
   (setq _sample0 (round __sample0))
   (setq _tx_delays __tx_delays)
   (setq _tx_angles __tx_angles)
   (setq _rx_angles __rx_angles)
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
  (:sample_rate
   (&optional __sample_rate)
   (if __sample_rate (setq _sample_rate __sample_rate)) _sample_rate)
  (:samples_per_beam
   (&optional __samples_per_beam)
   (if __samples_per_beam (setq _samples_per_beam __samples_per_beam)) _samples_per_beam)
  (:sample0
   (&optional __sample0)
   (if __sample0 (setq _sample0 __sample0)) _sample0)
  (:tx_delays
   (&optional __tx_delays)
   (if __tx_delays (setq _tx_delays __tx_delays)) _tx_delays)
  (:tx_angles
   (&optional __tx_angles)
   (if __tx_angles (setq _tx_angles __tx_angles)) _tx_angles)
  (:rx_angles
   (&optional __rx_angles)
   (if __rx_angles (setq _rx_angles __rx_angles)) _rx_angles)
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
    ;; float32 _sample_rate
    4
    ;; uint32 _samples_per_beam
    4
    ;; uint32 _sample0
    4
    ;; float32[] _tx_delays
    (* 4    (length _tx_delays)) 4
    ;; float32[] _tx_angles
    (* 4    (length _tx_angles)) 4
    ;; float32[] _rx_angles
    (* 4    (length _rx_angles)) 4
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
     ;; float32 _sample_rate
       (sys::poke _sample_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _samples_per_beam
       (write-long _samples_per_beam s)
     ;; uint32 _sample0
       (write-long _sample0 s)
     ;; float32[] _tx_delays
     (write-long (length _tx_delays) s)
     (dotimes (i (length _tx_delays))
       (sys::poke (elt _tx_delays i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _sample_rate
     (setq _sample_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _samples_per_beam
     (setq _samples_per_beam (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sample0
     (setq _sample0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _tx_delays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tx_delays (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tx_delays i) (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; marine_acoustic_msgs/SonarImageData _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::RawSonarImage :md5sum-) "84d7210aa67320a9262e0908f3e466c5")
(setf (get marine_acoustic_msgs::RawSonarImage :datatype-) "marine_acoustic_msgs/RawSonarImage")
(setf (get marine_acoustic_msgs::RawSonarImage :definition-)
      "
# The header time should be the time the ping was transmitted, not
# the time the message was received.
# Note that these two could potentially be several seconds apart,
# especially in deep water.
std_msgs/Header header

PingInfo ping_info

float32 sample_rate   # hz

uint32  samples_per_beam  # the number of samples in each beam

# Many sonars have some kind of upper gate for water column data
# this represents the sample number of the first non empty sample
# for beam n
uint32 sample0

# Multi-sector multibeams can transmit different sectors at different times
# The Reson doesn't but we include a TX delay for each beam anyway.
#
# Overall, therefore, our overall time is:
#
# header.stamp: TX cycle starts
# Each beam's TX time: header.stamp + transmit_delay[i]
# Each beam's RX time: header.stamp + transmit_delay[i] + sample_rate*image_row
float32[] tx_delays
# Steering angle applied to tx beam
# reported in radians
float32[] tx_angles

# Steering angle applied to rx beam
# reported in radians
float32[] rx_angles

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



(provide :marine_acoustic_msgs/RawSonarImage "84d7210aa67320a9262e0908f3e466c5")


