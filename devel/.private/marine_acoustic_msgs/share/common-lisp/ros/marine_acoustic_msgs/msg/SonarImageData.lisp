; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude SonarImageData.msg.html

(cl:defclass <SonarImageData> (roslisp-msg-protocol:ros-message)
  ((is_bigendian
    :reader is_bigendian
    :initarg :is_bigendian
    :type cl:boolean
    :initform cl:nil)
   (dtype
    :reader dtype
    :initarg :dtype
    :type cl:integer
    :initform 0)
   (beam_count
    :reader beam_count
    :initarg :beam_count
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SonarImageData (<SonarImageData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarImageData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarImageData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<SonarImageData> is deprecated: use marine_acoustic_msgs-msg:SonarImageData instead.")))

(cl:ensure-generic-function 'is_bigendian-val :lambda-list '(m))
(cl:defmethod is_bigendian-val ((m <SonarImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:is_bigendian-val is deprecated.  Use marine_acoustic_msgs-msg:is_bigendian instead.")
  (is_bigendian m))

(cl:ensure-generic-function 'dtype-val :lambda-list '(m))
(cl:defmethod dtype-val ((m <SonarImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:dtype-val is deprecated.  Use marine_acoustic_msgs-msg:dtype instead.")
  (dtype m))

(cl:ensure-generic-function 'beam_count-val :lambda-list '(m))
(cl:defmethod beam_count-val ((m <SonarImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_count-val is deprecated.  Use marine_acoustic_msgs-msg:beam_count instead.")
  (beam_count m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SonarImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:data-val is deprecated.  Use marine_acoustic_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SonarImageData>)))
    "Constants for message type '<SonarImageData>"
  '((:DTYPE_UINT8 . 0)
    (:DTYPE_INT8 . 1)
    (:DTYPE_UINT16 . 2)
    (:DTYPE_INT16 . 3)
    (:DTYPE_UINT32 . 4)
    (:DTYPE_INT32 . 5)
    (:DTYPE_UINT64 . 6)
    (:DTYPE_INT64 . 7)
    (:DTYPE_FLOAT32 . 8)
    (:DTYPE_FLOAT64 . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SonarImageData)))
    "Constants for message type 'SonarImageData"
  '((:DTYPE_UINT8 . 0)
    (:DTYPE_INT8 . 1)
    (:DTYPE_UINT16 . 2)
    (:DTYPE_INT16 . 3)
    (:DTYPE_UINT32 . 4)
    (:DTYPE_INT32 . 5)
    (:DTYPE_UINT64 . 6)
    (:DTYPE_INT64 . 7)
    (:DTYPE_FLOAT32 . 8)
    (:DTYPE_FLOAT64 . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarImageData>) ostream)
  "Serializes a message object of type '<SonarImageData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_bigendian) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dtype)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dtype)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dtype)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dtype)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beam_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'beam_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'beam_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'beam_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarImageData>) istream)
  "Deserializes a message object of type '<SonarImageData>"
    (cl:setf (cl:slot-value msg 'is_bigendian) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dtype)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dtype)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dtype)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dtype)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beam_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'beam_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'beam_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'beam_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarImageData>)))
  "Returns string type for a message object of type '<SonarImageData>"
  "marine_acoustic_msgs/SonarImageData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarImageData)))
  "Returns string type for a message object of type 'SonarImageData"
  "marine_acoustic_msgs/SonarImageData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarImageData>)))
  "Returns md5sum for a message object of type '<SonarImageData>"
  "4daa9f67cfdb0ed22d5f2fe52c794da3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarImageData)))
  "Returns md5sum for a message object of type 'SonarImageData"
  "4daa9f67cfdb0ed22d5f2fe52c794da3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarImageData>)))
  "Returns full string definition for message of type '<SonarImageData>"
  (cl:format cl:nil "bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarImageData)))
  "Returns full string definition for message of type 'SonarImageData"
  (cl:format cl:nil "bool    is_bigendian~%~%uint32  DTYPE_UINT8 = 0~%uint32  DTYPE_INT8 = 1~%uint32  DTYPE_UINT16 = 2~%uint32  DTYPE_INT16 = 3~%uint32  DTYPE_UINT32 = 4~%uint32  DTYPE_INT32 = 5~%uint32  DTYPE_UINT64 = 6~%uint32  DTYPE_INT64 = 7~%uint32  DTYPE_FLOAT32 = 8~%uint32  DTYPE_FLOAT64 = 9~%~%uint32  dtype~%~%# the number of beams associated with the image~%uint32 beam_count~%~%# The actually pixel data in row-major (beam_index major) format~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarImageData>))
  (cl:+ 0
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarImageData>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarImageData
    (cl:cons ':is_bigendian (is_bigendian msg))
    (cl:cons ':dtype (dtype msg))
    (cl:cons ':beam_count (beam_count msg))
    (cl:cons ':data (data msg))
))
