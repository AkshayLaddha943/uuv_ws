; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude PingInfo.msg.html

(cl:defclass <PingInfo> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (sound_speed
    :reader sound_speed
    :initarg :sound_speed
    :type cl:float
    :initform 0.0)
   (tx_beamwidths
    :reader tx_beamwidths
    :initarg :tx_beamwidths
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rx_beamwidths
    :reader rx_beamwidths
    :initarg :rx_beamwidths
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PingInfo (<PingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<PingInfo> is deprecated: use marine_acoustic_msgs-msg:PingInfo instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <PingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:frequency-val is deprecated.  Use marine_acoustic_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'sound_speed-val :lambda-list '(m))
(cl:defmethod sound_speed-val ((m <PingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:sound_speed-val is deprecated.  Use marine_acoustic_msgs-msg:sound_speed instead.")
  (sound_speed m))

(cl:ensure-generic-function 'tx_beamwidths-val :lambda-list '(m))
(cl:defmethod tx_beamwidths-val ((m <PingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:tx_beamwidths-val is deprecated.  Use marine_acoustic_msgs-msg:tx_beamwidths instead.")
  (tx_beamwidths m))

(cl:ensure-generic-function 'rx_beamwidths-val :lambda-list '(m))
(cl:defmethod rx_beamwidths-val ((m <PingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:rx_beamwidths-val is deprecated.  Use marine_acoustic_msgs-msg:rx_beamwidths instead.")
  (rx_beamwidths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingInfo>) ostream)
  "Serializes a message object of type '<PingInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sound_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tx_beamwidths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tx_beamwidths))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rx_beamwidths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rx_beamwidths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingInfo>) istream)
  "Deserializes a message object of type '<PingInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sound_speed) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tx_beamwidths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tx_beamwidths)))
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
  (cl:setf (cl:slot-value msg 'rx_beamwidths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rx_beamwidths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingInfo>)))
  "Returns string type for a message object of type '<PingInfo>"
  "marine_acoustic_msgs/PingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingInfo)))
  "Returns string type for a message object of type 'PingInfo"
  "marine_acoustic_msgs/PingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingInfo>)))
  "Returns md5sum for a message object of type '<PingInfo>"
  "a0641c363452e8f5b02c57db588deecc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingInfo)))
  "Returns md5sum for a message object of type 'PingInfo"
  "a0641c363452e8f5b02c57db588deecc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingInfo>)))
  "Returns full string definition for message of type '<PingInfo>"
  (cl:format cl:nil "# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingInfo)))
  "Returns full string definition for message of type 'PingInfo"
  (cl:format cl:nil "# Center frequency of sonar in Hz~%# Set to 0 if unavailable~%float32 frequency~%~%# Speed of sound (m/s) used to calculate ranges;~%# Set to 0 if unavailable~%float32 sound_speed~%~%# Sonar reported -3db beamwidths~%# May be empty if not reported~%# reported in radians~%float32[] tx_beamwidths~%float32[] rx_beamwidths~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingInfo>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tx_beamwidths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rx_beamwidths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PingInfo
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':sound_speed (sound_speed msg))
    (cl:cons ':tx_beamwidths (tx_beamwidths msg))
    (cl:cons ':rx_beamwidths (rx_beamwidths msg))
))
