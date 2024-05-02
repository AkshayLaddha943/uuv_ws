; Auto-generated. Do not edit!


(cl:in-package bruce_msgs-msg)


;//! \htmlinclude ISAM2Update.msg.html

(cl:defclass <ISAM2Update> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (isam2
    :reader isam2
    :initarg :isam2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (graph
    :reader graph
    :initarg :graph
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ISAM2Update (<ISAM2Update>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ISAM2Update>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ISAM2Update)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-msg:<ISAM2Update> is deprecated: use bruce_msgs-msg:ISAM2Update instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ISAM2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-msg:header-val is deprecated.  Use bruce_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <ISAM2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-msg:key-val is deprecated.  Use bruce_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'isam2-val :lambda-list '(m))
(cl:defmethod isam2-val ((m <ISAM2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-msg:isam2-val is deprecated.  Use bruce_msgs-msg:isam2 instead.")
  (isam2 m))

(cl:ensure-generic-function 'graph-val :lambda-list '(m))
(cl:defmethod graph-val ((m <ISAM2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-msg:graph-val is deprecated.  Use bruce_msgs-msg:graph instead.")
  (graph m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <ISAM2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-msg:values-val is deprecated.  Use bruce_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ISAM2Update>) ostream)
  "Serializes a message object of type '<ISAM2Update>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'isam2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'isam2))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'graph))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'graph))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ISAM2Update>) istream)
  "Deserializes a message object of type '<ISAM2Update>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'isam2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'isam2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'graph) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'graph)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ISAM2Update>)))
  "Returns string type for a message object of type '<ISAM2Update>"
  "bruce_msgs/ISAM2Update")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ISAM2Update)))
  "Returns string type for a message object of type 'ISAM2Update"
  "bruce_msgs/ISAM2Update")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ISAM2Update>)))
  "Returns md5sum for a message object of type '<ISAM2Update>"
  "adea0c2c4633bd400b6e7cd433b18e42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ISAM2Update)))
  "Returns md5sum for a message object of type 'ISAM2Update"
  "adea0c2c4633bd400b6e7cd433b18e42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ISAM2Update>)))
  "Returns full string definition for message of type '<ISAM2Update>"
  (cl:format cl:nil "Header header~%uint32 key~%uint8[] isam2~%uint8[] graph~%uint8[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ISAM2Update)))
  "Returns full string definition for message of type 'ISAM2Update"
  (cl:format cl:nil "Header header~%uint32 key~%uint8[] isam2~%uint8[] graph~%uint8[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ISAM2Update>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'isam2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'graph) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ISAM2Update>))
  "Converts a ROS message object to a list"
  (cl:list 'ISAM2Update
    (cl:cons ':header (header msg))
    (cl:cons ':key (key msg))
    (cl:cons ':isam2 (isam2 msg))
    (cl:cons ':graph (graph msg))
    (cl:cons ':values (values msg))
))
