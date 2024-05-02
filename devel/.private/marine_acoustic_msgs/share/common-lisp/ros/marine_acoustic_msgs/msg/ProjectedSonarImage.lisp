; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude ProjectedSonarImage.msg.html

(cl:defclass <ProjectedSonarImage> (roslisp-msg-protocol:ros-message)
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
   (beam_directions
    :reader beam_directions
    :initarg :beam_directions
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (image
    :reader image
    :initarg :image
    :type marine_acoustic_msgs-msg:SonarImageData
    :initform (cl:make-instance 'marine_acoustic_msgs-msg:SonarImageData)))
)

(cl:defclass ProjectedSonarImage (<ProjectedSonarImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjectedSonarImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjectedSonarImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<ProjectedSonarImage> is deprecated: use marine_acoustic_msgs-msg:ProjectedSonarImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProjectedSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:header-val is deprecated.  Use marine_acoustic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ping_info-val :lambda-list '(m))
(cl:defmethod ping_info-val ((m <ProjectedSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:ping_info-val is deprecated.  Use marine_acoustic_msgs-msg:ping_info instead.")
  (ping_info m))

(cl:ensure-generic-function 'beam_directions-val :lambda-list '(m))
(cl:defmethod beam_directions-val ((m <ProjectedSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_directions-val is deprecated.  Use marine_acoustic_msgs-msg:beam_directions instead.")
  (beam_directions m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <ProjectedSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:ranges-val is deprecated.  Use marine_acoustic_msgs-msg:ranges instead.")
  (ranges m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ProjectedSonarImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:image-val is deprecated.  Use marine_acoustic_msgs-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjectedSonarImage>) ostream)
  "Serializes a message object of type '<ProjectedSonarImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ping_info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beam_directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beam_directions))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjectedSonarImage>) istream)
  "Deserializes a message object of type '<ProjectedSonarImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ping_info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beam_directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beam_directions)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjectedSonarImage>)))
  "Returns string type for a message object of type '<ProjectedSonarImage>"
  "marine_acoustic_msgs/ProjectedSonarImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectedSonarImage)))
  "Returns string type for a message object of type 'ProjectedSonarImage"
  "marine_acoustic_msgs/ProjectedSonarImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjectedSonarImage>)))
  "Returns md5sum for a message object of type '<ProjectedSonarImage>"
  "c72fc8e29ab227a547720a36666022fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjectedSonarImage)))
  "Returns md5sum for a message object of type 'ProjectedSonarImage"
  "c72fc8e29ab227a547720a36666022fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjectedSonarImage>)))
  "Returns full string definition for message of type '<ProjectedSonarImage>"
  (cl:format cl:nil "# Single scan from an imaging sonar~%#~%# The Z-axis is centered in the plane of the fan (\"forward\"), with X up,~%# in order to be consistent with the NED for traditional multibeam profilers.~%#~%# For sonars with a 1D array, the beams lie on the Y-Z plane, and~%# and each beam has an azimuth (rotation about X) value.  Zero azimuth~%# is in the direction of the Z-axis, typically \"straight out\" from the sonar.~%# Elevation is the orthogonal direction (rotation about Y),~%# often termed the \"vertical aperture\"~%~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%geometry_msgs/Vector3[] beam_directions~%~%# Center of each range bin in meters. Note this these may not be equally~%# spaced, and do not necessarily start at zero range.~%float32[] ranges~%~%SonarImageData image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: marine_acoustic_msgs/SonarImageData~%bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjectedSonarImage)))
  "Returns full string definition for message of type 'ProjectedSonarImage"
  (cl:format cl:nil "# Single scan from an imaging sonar~%#~%# The Z-axis is centered in the plane of the fan (\"forward\"), with X up,~%# in order to be consistent with the NED for traditional multibeam profilers.~%#~%# For sonars with a 1D array, the beams lie on the Y-Z plane, and~%# and each beam has an azimuth (rotation about X) value.  Zero azimuth~%# is in the direction of the Z-axis, typically \"straight out\" from the sonar.~%# Elevation is the orthogonal direction (rotation about Y),~%# often termed the \"vertical aperture\"~%~%# The header time should be the time the ping was transmitted, not~%# the time the message was received.~%# Note that these two could potentially be several seconds apart,~%# especially in deep water.~%std_msgs/Header header~%~%PingInfo ping_info~%~%geometry_msgs/Vector3[] beam_directions~%~%# Center of each range bin in meters. Note this these may not be equally~%# spaced, and do not necessarily start at zero range.~%float32[] ranges~%~%SonarImageData image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_acoustic_msgs/PingInfo~%# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: marine_acoustic_msgs/SonarImageData~%bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjectedSonarImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ping_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjectedSonarImage>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjectedSonarImage
    (cl:cons ':header (header msg))
    (cl:cons ':ping_info (ping_info msg))
    (cl:cons ':beam_directions (beam_directions msg))
    (cl:cons ':ranges (ranges msg))
    (cl:cons ':image (image msg))
))
