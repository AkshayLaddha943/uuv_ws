; Auto-generated. Do not edit!


(cl:in-package kvh_gyro-msg)


;//! \htmlinclude gyro.msg.html

(cl:defclass <gyro> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (delta
    :reader delta
    :initarg :delta
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass gyro (<gyro>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gyro>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gyro)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kvh_gyro-msg:<gyro> is deprecated: use kvh_gyro-msg:gyro instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kvh_gyro-msg:header-val is deprecated.  Use kvh_gyro-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <gyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kvh_gyro-msg:status-val is deprecated.  Use kvh_gyro-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'delta-val :lambda-list '(m))
(cl:defmethod delta-val ((m <gyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kvh_gyro-msg:delta-val is deprecated.  Use kvh_gyro-msg:delta instead.")
  (delta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gyro>) ostream)
  "Serializes a message object of type '<gyro>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'delta))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gyro>) istream)
  "Deserializes a message object of type '<gyro>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'delta) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'delta)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gyro>)))
  "Returns string type for a message object of type '<gyro>"
  "kvh_gyro/gyro")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gyro)))
  "Returns string type for a message object of type 'gyro"
  "kvh_gyro/gyro")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gyro>)))
  "Returns md5sum for a message object of type '<gyro>"
  "7bf4a7f82fe96d9124091847a68d6212")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gyro)))
  "Returns md5sum for a message object of type 'gyro"
  "7bf4a7f82fe96d9124091847a68d6212")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gyro>)))
  "Returns full string definition for message of type '<gyro>"
  (cl:format cl:nil "Header header~%bool status #was there an error with the gyro?~%float64[] delta #an array for dx, dy, dz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gyro)))
  "Returns full string definition for message of type 'gyro"
  (cl:format cl:nil "Header header~%bool status #was there an error with the gyro?~%float64[] delta #an array for dx, dy, dz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gyro>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'delta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gyro>))
  "Converts a ROS message object to a list"
  (cl:list 'gyro
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':delta (delta msg))
))
