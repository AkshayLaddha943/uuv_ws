; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude SonarRanges.msg.html

(cl:defclass <SonarRanges> (roslisp-msg-protocol:ros-message)
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
   (flags
    :reader flags
    :initarg :flags
    :type (cl:vector marine_acoustic_msgs-msg:DetectionFlag)
   :initform (cl:make-array 0 :element-type 'marine_acoustic_msgs-msg:DetectionFlag :initial-element (cl:make-instance 'marine_acoustic_msgs-msg:DetectionFlag)))
   (transmit_delays
    :reader transmit_delays
    :initarg :transmit_delays
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (intensities
    :reader intensities
    :initarg :intensities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (beam_unit_vec
    :reader beam_unit_vec
    :initarg :beam_unit_vec
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SonarRanges (<SonarRanges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarRanges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarRanges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<SonarRanges> is deprecated: use marine_acoustic_msgs-msg:SonarRanges instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:header-val is deprecated.  Use marine_acoustic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ping_info-val :lambda-list '(m))
(cl:defmethod ping_info-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:ping_info-val is deprecated.  Use marine_acoustic_msgs-msg:ping_info instead.")
  (ping_info m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:flags-val is deprecated.  Use marine_acoustic_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'transmit_delays-val :lambda-list '(m))
(cl:defmethod transmit_delays-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:transmit_delays-val is deprecated.  Use marine_acoustic_msgs-msg:transmit_delays instead.")
  (transmit_delays m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:intensities-val is deprecated.  Use marine_acoustic_msgs-msg:intensities instead.")
  (intensities m))

(cl:ensure-generic-function 'beam_unit_vec-val :lambda-list '(m))
(cl:defmethod beam_unit_vec-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_unit_vec-val is deprecated.  Use marine_acoustic_msgs-msg:beam_unit_vec instead.")
  (beam_unit_vec m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <SonarRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:ranges-val is deprecated.  Use marine_acoustic_msgs-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarRanges>) ostream)
  "Serializes a message object of type '<SonarRanges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ping_info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'flags))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transmit_delays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'transmit_delays))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intensities))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beam_unit_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beam_unit_vec))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarRanges>) istream)
  "Deserializes a message object of type '<SonarRanges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ping_info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marine_acoustic_msgs-msg:DetectionFlag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transmit_delays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transmit_delays)))
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
  (cl:setf (cl:slot-value msg 'intensities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensities)))
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
  (cl:setf (cl:slot-value msg 'beam_unit_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beam_unit_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarRanges>)))
  "Returns string type for a message object of type '<SonarRanges>"
  "marine_acoustic_msgs/SonarRanges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarRanges)))
  "Returns string type for a message object of type 'SonarRanges"
  "marine_acoustic_msgs/SonarRanges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarRanges>)))
  "Returns md5sum for a message object of type '<SonarRanges>"
  "be94c27604dc96cadea282ffc5faacb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarRanges)))
  "Returns md5sum for a message object of type 'SonarRanges"
  "be94c27604dc96cadea282ffc5faacb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarRanges>)))
  "Returns full string definition for message of type '<SonarRanges>"
  (cl:format cl:nil "# Single ping from a profiling sonar.~%#~%# This message is modeled after WHOI's MultibeamRaw.msg, from the~%# ds_multibeam_msgs package (released under a BSD license).~%# Modifications were made by UW-APL.~%~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%# Constants declaring whether each beam is good or bad.~%# This is implemented as an 8-bit masked value; it is possible for more~%# than one thing to flag beams as bad. To check if a beam is good, simply~%# check if it is zero.~%~%DetectionFlag[] flags~%~%# Multi-sector multibeams can transmit different sectors at different times~%# The Reson doesn't but we include a TX delay for each beam anyway.~%#~%# Overall, therefore, our overall time is:~%#~%# header.stamp: TX cycle starts~%# Each beam's TX time: header.stamp + txDelay[i]~%# Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]~%float32[] transmit_delays~%~%# Sonar-reported intensity.  Usually uncalibrated and crude~%float32[] intensities~%~%geometry_msgs/Vector3[] beam_unit_vec~%~%float32[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: marine_acoustic_msgs/DetectionFlag~%# Beam is OK~%uint8 DETECT_OK = 0~%# Beam is flagged as bad by the sonar.  Think hard before second-guessing~%uint8 DETECT_BAD_SONAR = 1~%# Beam is flagged as bad by some automated filter applied during processing.~%uint8 DETECT_BAD_FILTER = 2~%# Beam is flagged as bad by the user. This is probably not happening in~%# realtime, but is included here so the same message can be used throughout~%# a post-processing pipeline.~%uint8 DETECT_BAD_USER = 4~%~%# These arrays should have the same dimensions, and should match~%# the number of beams for this sonar.~%#~%# Some fields are optional.  Those should have 0 length.~%~%# Flag values for every beam~%uint8 flag~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarRanges)))
  "Returns full string definition for message of type 'SonarRanges"
  (cl:format cl:nil "# Single ping from a profiling sonar.~%#~%# This message is modeled after WHOI's MultibeamRaw.msg, from the~%# ds_multibeam_msgs package (released under a BSD license).~%# Modifications were made by UW-APL.~%~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%# Constants declaring whether each beam is good or bad.~%# This is implemented as an 8-bit masked value; it is possible for more~%# than one thing to flag beams as bad. To check if a beam is good, simply~%# check if it is zero.~%~%DetectionFlag[] flags~%~%# Multi-sector multibeams can transmit different sectors at different times~%# The Reson doesn't but we include a TX delay for each beam anyway.~%#~%# Overall, therefore, our overall time is:~%#~%# header.stamp: TX cycle starts~%# Each beam's TX time: header.stamp + txDelay[i]~%# Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]~%float32[] transmit_delays~%~%# Sonar-reported intensity.  Usually uncalibrated and crude~%float32[] intensities~%~%geometry_msgs/Vector3[] beam_unit_vec~%~%float32[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: marine_acoustic_msgs/DetectionFlag~%# Beam is OK~%uint8 DETECT_OK = 0~%# Beam is flagged as bad by the sonar.  Think hard before second-guessing~%uint8 DETECT_BAD_SONAR = 1~%# Beam is flagged as bad by some automated filter applied during processing.~%uint8 DETECT_BAD_FILTER = 2~%# Beam is flagged as bad by the user. This is probably not happening in~%# realtime, but is included here so the same message can be used throughout~%# a post-processing pipeline.~%uint8 DETECT_BAD_USER = 4~%~%# These arrays should have the same dimensions, and should match~%# the number of beams for this sonar.~%#~%# Some fields are optional.  Those should have 0 length.~%~%# Flag values for every beam~%uint8 flag~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarRanges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ping_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transmit_delays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_unit_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarRanges>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarRanges
    (cl:cons ':header (header msg))
    (cl:cons ':ping_info (ping_info msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':transmit_delays (transmit_delays msg))
    (cl:cons ':intensities (intensities msg))
    (cl:cons ':beam_unit_vec (beam_unit_vec msg))
    (cl:cons ':ranges (ranges msg))
))
