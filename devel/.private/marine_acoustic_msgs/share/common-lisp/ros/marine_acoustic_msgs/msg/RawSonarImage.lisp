; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude RawSonarImage.msg.html

(cl:defclass <RawSonarImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ping_info
    :reader ping_info
    :initarg :ping_info
    :type marine_acoustic_msgs-msg:PingInfo
    :initform (cl:make-instance 'marine_acoustic_msgs-msg:PingInfo))
   (sample_rate
    :reader sample_rate
    :initarg :sample_rate
    :type cl:float
    :initform 0.0)
   (samples_per_beam
    :reader samples_per_beam
    :initarg :samples_per_beam
    :type cl:integer
    :initform 0)
   (sample0
    :reader sample0
    :initarg :sample0
    :type cl:integer
    :initform 0)
   (tx_delays
    :reader tx_delays
    :initarg :tx_delays
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tx_angles
    :reader tx_angles
    :initarg :tx_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rx_angles
    :reader rx_angles
    :initarg :rx_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (image
    :reader image
    :initarg :image
    :type marine_acoustic_msgs-msg:SonarImageData
    :initform (cl:make-instance 'marine_acoustic_msgs-msg:SonarImageData)))
)

(cl:defclass RawSonarImage (<RawSonarImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawSonarImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawSonarImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<RawSonarImage> is deprecated: use marine_acoustic_msgs-msg:RawSonarImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:header-val is deprecated.  Use marine_acoustic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ping_info-val :lambda-list '(m))
(cl:defmethod ping_info-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:ping_info-val is deprecated.  Use marine_acoustic_msgs-msg:ping_info instead.")
  (ping_info m))

(cl:ensure-generic-function 'sample_rate-val :lambda-list '(m))
(cl:defmethod sample_rate-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:sample_rate-val is deprecated.  Use marine_acoustic_msgs-msg:sample_rate instead.")
  (sample_rate m))

(cl:ensure-generic-function 'samples_per_beam-val :lambda-list '(m))
(cl:defmethod samples_per_beam-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:samples_per_beam-val is deprecated.  Use marine_acoustic_msgs-msg:samples_per_beam instead.")
  (samples_per_beam m))

(cl:ensure-generic-function 'sample0-val :lambda-list '(m))
(cl:defmethod sample0-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:sample0-val is deprecated.  Use marine_acoustic_msgs-msg:sample0 instead.")
  (sample0 m))

(cl:ensure-generic-function 'tx_delays-val :lambda-list '(m))
(cl:defmethod tx_delays-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:tx_delays-val is deprecated.  Use marine_acoustic_msgs-msg:tx_delays instead.")
  (tx_delays m))

(cl:ensure-generic-function 'tx_angles-val :lambda-list '(m))
(cl:defmethod tx_angles-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:tx_angles-val is deprecated.  Use marine_acoustic_msgs-msg:tx_angles instead.")
  (tx_angles m))

(cl:ensure-generic-function 'rx_angles-val :lambda-list '(m))
(cl:defmethod rx_angles-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:rx_angles-val is deprecated.  Use marine_acoustic_msgs-msg:rx_angles instead.")
  (rx_angles m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <RawSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:image-val is deprecated.  Use marine_acoustic_msgs-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawSonarImage>) ostream)
  "Serializes a message object of type '<RawSonarImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ping_info) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sample_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'samples_per_beam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'samples_per_beam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'samples_per_beam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'samples_per_beam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tx_delays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tx_delays))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tx_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tx_angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rx_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rx_angles))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawSonarImage>) istream)
  "Deserializes a message object of type '<RawSonarImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ping_info) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sample_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'samples_per_beam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'samples_per_beam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'samples_per_beam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'samples_per_beam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample0)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tx_delays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tx_delays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tx_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tx_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rx_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rx_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawSonarImage>)))
  "Returns string type for a message object of type '<RawSonarImage>"
  "marine_acoustic_msgs/RawSonarImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawSonarImage)))
  "Returns string type for a message object of type 'RawSonarImage"
  "marine_acoustic_msgs/RawSonarImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawSonarImage>)))
  "Returns md5sum for a message object of type '<RawSonarImage>"
  "84d7210aa67320a9262e0908f3e466c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawSonarImage)))
  "Returns md5sum for a message object of type 'RawSonarImage"
  "84d7210aa67320a9262e0908f3e466c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawSonarImage>)))
  "Returns full string definition for message of type '<RawSonarImage>"
  (cl:format cl:nil "~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%float32 sample_rate   # hz~%~%uint32  samples_per_beam  # the number of samples in each beam~%~%# Many sonars have some kind of upper gate for water column data~%# this represents the sample number of the first non empty sample~%# for beam n~%uint32 sample0~%~%# Multi-sector multibeams can transmit different sectors at different times~%# The Reson doesn't but we include a TX delay for each beam anyway.~%#~%# Overall, therefore, our overall time is:~%#~%# header.stamp: TX cycle starts~%# Each beam's TX time: header.stamp + transmit_delay[i]~%# Each beam's RX time: header.stamp + transmit_delay[i] + sample_rate*image_row~%float32[] tx_delays~%# Steering angle applied to tx beam~%# reported in radians~%float32[] tx_angles~%~%# Steering angle applied to rx beam~%# reported in radians~%float32[] rx_angles~%~%SonarImageData image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: marine_acoustic_msgs/SonarImageData~%bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawSonarImage)))
  "Returns full string definition for message of type 'RawSonarImage"
  (cl:format cl:nil "~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%float32 sample_rate   # hz~%~%uint32  samples_per_beam  # the number of samples in each beam~%~%# Many sonars have some kind of upper gate for water column data~%# this represents the sample number of the first non empty sample~%# for beam n~%uint32 sample0~%~%# Multi-sector multibeams can transmit different sectors at different times~%# The Reson doesn't but we include a TX delay for each beam anyway.~%#~%# Overall, therefore, our overall time is:~%#~%# header.stamp: TX cycle starts~%# Each beam's TX time: header.stamp + transmit_delay[i]~%# Each beam's RX time: header.stamp + transmit_delay[i] + sample_rate*image_row~%float32[] tx_delays~%# Steering angle applied to tx beam~%# reported in radians~%float32[] tx_angles~%~%# Steering angle applied to rx beam~%# reported in radians~%float32[] rx_angles~%~%SonarImageData image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: marine_acoustic_msgs/SonarImageData~%bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawSonarImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ping_info))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tx_delays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tx_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rx_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawSonarImage>))
  "Converts a ROS message object to a list"
  (cl:list 'RawSonarImage
    (cl:cons ':header (header msg))
    (cl:cons ':ping_info (ping_info msg))
    (cl:cons ':sample_rate (sample_rate msg))
    (cl:cons ':samples_per_beam (samples_per_beam msg))
    (cl:cons ':sample0 (sample0 msg))
    (cl:cons ':tx_delays (tx_delays msg))
    (cl:cons ':tx_angles (tx_angles msg))
    (cl:cons ':rx_angles (rx_angles msg))
    (cl:cons ':image (image msg))
))
