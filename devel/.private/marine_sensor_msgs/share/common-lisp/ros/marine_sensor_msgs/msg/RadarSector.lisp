; Auto-generated. Do not edit!


(cl:in-package marine_sensor_msgs-msg)


;//! \htmlinclude RadarSector.msg.html

(cl:defclass <RadarSector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angle_start
    :reader angle_start
    :initarg :angle_start
    :type cl:float
    :initform 0.0)
   (angle_increment
    :reader angle_increment
    :initarg :angle_increment
    :type cl:float
    :initform 0.0)
   (time_increment
    :reader time_increment
    :initarg :time_increment
    :type cl:real
    :initform 0)
   (scan_time
    :reader scan_time
    :initarg :scan_time
    :type cl:real
    :initform 0)
   (range_min
    :reader range_min
    :initarg :range_min
    :type cl:float
    :initform 0.0)
   (range_max
    :reader range_max
    :initarg :range_max
    :type cl:float
    :initform 0.0)
   (intensities
    :reader intensities
    :initarg :intensities
    :type (cl:vector marine_sensor_msgs-msg:RadarEcho)
   :initform (cl:make-array 0 :element-type 'marine_sensor_msgs-msg:RadarEcho :initial-element (cl:make-instance 'marine_sensor_msgs-msg:RadarEcho))))
)

(cl:defclass RadarSector (<RadarSector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarSector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarSector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_sensor_msgs-msg:<RadarSector> is deprecated: use marine_sensor_msgs-msg:RadarSector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:header-val is deprecated.  Use marine_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angle_start-val :lambda-list '(m))
(cl:defmethod angle_start-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:angle_start-val is deprecated.  Use marine_sensor_msgs-msg:angle_start instead.")
  (angle_start m))

(cl:ensure-generic-function 'angle_increment-val :lambda-list '(m))
(cl:defmethod angle_increment-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:angle_increment-val is deprecated.  Use marine_sensor_msgs-msg:angle_increment instead.")
  (angle_increment m))

(cl:ensure-generic-function 'time_increment-val :lambda-list '(m))
(cl:defmethod time_increment-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:time_increment-val is deprecated.  Use marine_sensor_msgs-msg:time_increment instead.")
  (time_increment m))

(cl:ensure-generic-function 'scan_time-val :lambda-list '(m))
(cl:defmethod scan_time-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:scan_time-val is deprecated.  Use marine_sensor_msgs-msg:scan_time instead.")
  (scan_time m))

(cl:ensure-generic-function 'range_min-val :lambda-list '(m))
(cl:defmethod range_min-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:range_min-val is deprecated.  Use marine_sensor_msgs-msg:range_min instead.")
  (range_min m))

(cl:ensure-generic-function 'range_max-val :lambda-list '(m))
(cl:defmethod range_max-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:range_max-val is deprecated.  Use marine_sensor_msgs-msg:range_max instead.")
  (range_max m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <RadarSector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:intensities-val is deprecated.  Use marine_sensor_msgs-msg:intensities instead.")
  (intensities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarSector>) ostream)
  "Serializes a message object of type '<RadarSector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_increment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_increment)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_increment) (cl:floor (cl:slot-value msg 'time_increment)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'scan_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'scan_time) (cl:floor (cl:slot-value msg 'scan_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intensities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarSector>) istream)
  "Deserializes a message object of type '<RadarSector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_start) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_increment) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_increment) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scan_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_max) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intensities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marine_sensor_msgs-msg:RadarEcho))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarSector>)))
  "Returns string type for a message object of type '<RadarSector>"
  "marine_sensor_msgs/RadarSector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarSector)))
  "Returns string type for a message object of type 'RadarSector"
  "marine_sensor_msgs/RadarSector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarSector>)))
  "Returns md5sum for a message object of type '<RadarSector>"
  "df60b1c17b5e9990cfefd1e37ab4e5a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarSector)))
  "Returns md5sum for a message object of type 'RadarSector"
  "df60b1c17b5e9990cfefd1e37ab4e5a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarSector>)))
  "Returns full string definition for message of type '<RadarSector>"
  (cl:format cl:nil "# A collection of marine radar rays, typically covering a contiguous~%# arc of a full circle.~%~%# timestamp in the header is the acquisition time of~%# the first ray in the sector.~%#~%# In frame frame_id, angles are measured around~%# the positive Z axis (counterclockwise, if Z is up)~%# with zero angle being forward along the X axis~%Header header~%~%# start angle of this sector [rad]~%float32 angle_start~%~%# angular distance between rays [rad]~%float32 angle_increment~%~%# time between rays [seconds] - if your scanner~%# is moving, this can be used in interpolating~%# position of 3d points~%duration time_increment~%~%# time between two consecutive complete scans~%# or revolutions [seconds]~%# Warning: On hardware that doesn't provide a timestamp,~%# time-related fields may be estimated and vary~%# from sector to sector as estimates are updated~%duration scan_time~%~%# range of the first sample in each ray [m]~%float32 range_min~%~%# range of the last sample in each ray [m]~%float32 range_max~%~%# intensity data [device-specific units].~%RadarEcho[] intensities~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_sensor_msgs/RadarEcho~%# This message is a submessage of RadarSector and is not intended~%# to be used separately. It represents intensities from a~%# single ray.~%~%# Series of intensities from closest to farthest~%# along a given angle increment. [device-specific units]~%float32[] echoes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarSector)))
  "Returns full string definition for message of type 'RadarSector"
  (cl:format cl:nil "# A collection of marine radar rays, typically covering a contiguous~%# arc of a full circle.~%~%# timestamp in the header is the acquisition time of~%# the first ray in the sector.~%#~%# In frame frame_id, angles are measured around~%# the positive Z axis (counterclockwise, if Z is up)~%# with zero angle being forward along the X axis~%Header header~%~%# start angle of this sector [rad]~%float32 angle_start~%~%# angular distance between rays [rad]~%float32 angle_increment~%~%# time between rays [seconds] - if your scanner~%# is moving, this can be used in interpolating~%# position of 3d points~%duration time_increment~%~%# time between two consecutive complete scans~%# or revolutions [seconds]~%# Warning: On hardware that doesn't provide a timestamp,~%# time-related fields may be estimated and vary~%# from sector to sector as estimates are updated~%duration scan_time~%~%# range of the first sample in each ray [m]~%float32 range_min~%~%# range of the last sample in each ray [m]~%float32 range_max~%~%# intensity data [device-specific units].~%RadarEcho[] intensities~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marine_sensor_msgs/RadarEcho~%# This message is a submessage of RadarSector and is not intended~%# to be used separately. It represents intensities from a~%# single ray.~%~%# Series of intensities from closest to farthest~%# along a given angle increment. [device-specific units]~%float32[] echoes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarSector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarSector>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarSector
    (cl:cons ':header (header msg))
    (cl:cons ':angle_start (angle_start msg))
    (cl:cons ':angle_increment (angle_increment msg))
    (cl:cons ':time_increment (time_increment msg))
    (cl:cons ':scan_time (scan_time msg))
    (cl:cons ':range_min (range_min msg))
    (cl:cons ':range_max (range_max msg))
    (cl:cons ':intensities (intensities msg))
))
