; Auto-generated. Do not edit!


(cl:in-package sonar_oculus-msg)


;//! \htmlinclude OculusPingUncompressed.msg.html

(cl:defclass <OculusPingUncompressed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fire_msg
    :reader fire_msg
    :initarg :fire_msg
    :type sonar_oculus-msg:OculusFire
    :initform (cl:make-instance 'sonar_oculus-msg:OculusFire))
   (ping_id
    :reader ping_id
    :initarg :ping_id
    :type cl:integer
    :initform 0)
   (part_number
    :reader part_number
    :initarg :part_number
    :type cl:fixnum
    :initform 0)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:integer
    :initform 0)
   (bearings
    :reader bearings
    :initarg :bearings
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (range_resolution
    :reader range_resolution
    :initarg :range_resolution
    :type cl:float
    :initform 0.0)
   (num_ranges
    :reader num_ranges
    :initarg :num_ranges
    :type cl:integer
    :initform 0)
   (num_beams
    :reader num_beams
    :initarg :num_beams
    :type cl:integer
    :initform 0)
   (ping
    :reader ping
    :initarg :ping
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass OculusPingUncompressed (<OculusPingUncompressed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OculusPingUncompressed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OculusPingUncompressed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sonar_oculus-msg:<OculusPingUncompressed> is deprecated: use sonar_oculus-msg:OculusPingUncompressed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:header-val is deprecated.  Use sonar_oculus-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fire_msg-val :lambda-list '(m))
(cl:defmethod fire_msg-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:fire_msg-val is deprecated.  Use sonar_oculus-msg:fire_msg instead.")
  (fire_msg m))

(cl:ensure-generic-function 'ping_id-val :lambda-list '(m))
(cl:defmethod ping_id-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:ping_id-val is deprecated.  Use sonar_oculus-msg:ping_id instead.")
  (ping_id m))

(cl:ensure-generic-function 'part_number-val :lambda-list '(m))
(cl:defmethod part_number-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:part_number-val is deprecated.  Use sonar_oculus-msg:part_number instead.")
  (part_number m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:start_time-val is deprecated.  Use sonar_oculus-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'bearings-val :lambda-list '(m))
(cl:defmethod bearings-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:bearings-val is deprecated.  Use sonar_oculus-msg:bearings instead.")
  (bearings m))

(cl:ensure-generic-function 'range_resolution-val :lambda-list '(m))
(cl:defmethod range_resolution-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:range_resolution-val is deprecated.  Use sonar_oculus-msg:range_resolution instead.")
  (range_resolution m))

(cl:ensure-generic-function 'num_ranges-val :lambda-list '(m))
(cl:defmethod num_ranges-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:num_ranges-val is deprecated.  Use sonar_oculus-msg:num_ranges instead.")
  (num_ranges m))

(cl:ensure-generic-function 'num_beams-val :lambda-list '(m))
(cl:defmethod num_beams-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:num_beams-val is deprecated.  Use sonar_oculus-msg:num_beams instead.")
  (num_beams m))

(cl:ensure-generic-function 'ping-val :lambda-list '(m))
(cl:defmethod ping-val ((m <OculusPingUncompressed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sonar_oculus-msg:ping-val is deprecated.  Use sonar_oculus-msg:ping instead.")
  (ping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OculusPingUncompressed>) ostream)
  "Serializes a message object of type '<OculusPingUncompressed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fire_msg) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ping_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ping_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ping_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ping_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'part_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bearings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'bearings))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_ranges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_ranges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_ranges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_ranges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_beams)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ping) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OculusPingUncompressed>) istream)
  "Deserializes a message object of type '<OculusPingUncompressed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fire_msg) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ping_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ping_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ping_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ping_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bearings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bearings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_resolution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_ranges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_ranges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_ranges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_ranges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_beams)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ping) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OculusPingUncompressed>)))
  "Returns string type for a message object of type '<OculusPingUncompressed>"
  "sonar_oculus/OculusPingUncompressed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OculusPingUncompressed)))
  "Returns string type for a message object of type 'OculusPingUncompressed"
  "sonar_oculus/OculusPingUncompressed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OculusPingUncompressed>)))
  "Returns md5sum for a message object of type '<OculusPingUncompressed>"
  "4339b8338f845749301a38b07bd11f83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OculusPingUncompressed)))
  "Returns md5sum for a message object of type 'OculusPingUncompressed"
  "4339b8338f845749301a38b07bd11f83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OculusPingUncompressed>)))
  "Returns full string definition for message of type '<OculusPingUncompressed>"
  (cl:format cl:nil "std_msgs/Header header~%~%OculusFire fire_msg~%~%uint32     ping_id~%uint16     part_number~%uint32     start_time~%~%int16[]    bearings         # bearings of beams (bearing * PI / 18000)~%float64    range_resolution # length of a single range bin~%uint32     num_ranges       # number of range lines in the image~%uint32     num_beams        # number of bearings in the image     ~%~%sensor_msgs/Image ping~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sonar_oculus/OculusFire~%Header header~%~%uint8    mode  ~%uint8    gamma~%uint8    flags~%float64  range~%float64  gain~%float64  speed_of_sound~%float64  salinity~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OculusPingUncompressed)))
  "Returns full string definition for message of type 'OculusPingUncompressed"
  (cl:format cl:nil "std_msgs/Header header~%~%OculusFire fire_msg~%~%uint32     ping_id~%uint16     part_number~%uint32     start_time~%~%int16[]    bearings         # bearings of beams (bearing * PI / 18000)~%float64    range_resolution # length of a single range bin~%uint32     num_ranges       # number of range lines in the image~%uint32     num_beams        # number of bearings in the image     ~%~%sensor_msgs/Image ping~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sonar_oculus/OculusFire~%Header header~%~%uint8    mode  ~%uint8    gamma~%uint8    flags~%float64  range~%float64  gain~%float64  speed_of_sound~%float64  salinity~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OculusPingUncompressed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fire_msg))
     4
     2
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bearings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ping))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OculusPingUncompressed>))
  "Converts a ROS message object to a list"
  (cl:list 'OculusPingUncompressed
    (cl:cons ':header (header msg))
    (cl:cons ':fire_msg (fire_msg msg))
    (cl:cons ':ping_id (ping_id msg))
    (cl:cons ':part_number (part_number msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':bearings (bearings msg))
    (cl:cons ':range_resolution (range_resolution msg))
    (cl:cons ':num_ranges (num_ranges msg))
    (cl:cons ':num_beams (num_beams msg))
    (cl:cons ':ping (ping msg))
))
