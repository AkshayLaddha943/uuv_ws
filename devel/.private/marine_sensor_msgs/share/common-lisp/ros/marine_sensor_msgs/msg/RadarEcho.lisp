; Auto-generated. Do not edit!


(cl:in-package marine_sensor_msgs-msg)


;//! \htmlinclude RadarEcho.msg.html

(cl:defclass <RadarEcho> (roslisp-msg-protocol:ros-message)
  ((echoes
    :reader echoes
    :initarg :echoes
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RadarEcho (<RadarEcho>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarEcho>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarEcho)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_sensor_msgs-msg:<RadarEcho> is deprecated: use marine_sensor_msgs-msg:RadarEcho instead.")))

(cl:ensure-generic-function 'echoes-val :lambda-list '(m))
(cl:defmethod echoes-val ((m <RadarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:echoes-val is deprecated.  Use marine_sensor_msgs-msg:echoes instead.")
  (echoes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarEcho>) ostream)
  "Serializes a message object of type '<RadarEcho>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'echoes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'echoes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarEcho>) istream)
  "Deserializes a message object of type '<RadarEcho>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'echoes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'echoes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarEcho>)))
  "Returns string type for a message object of type '<RadarEcho>"
  "marine_sensor_msgs/RadarEcho")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarEcho)))
  "Returns string type for a message object of type 'RadarEcho"
  "marine_sensor_msgs/RadarEcho")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarEcho>)))
  "Returns md5sum for a message object of type '<RadarEcho>"
  "8bc5ae449b200fba4d552b4225586696")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarEcho)))
  "Returns md5sum for a message object of type 'RadarEcho"
  "8bc5ae449b200fba4d552b4225586696")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarEcho>)))
  "Returns full string definition for message of type '<RadarEcho>"
  (cl:format cl:nil "# This message is a submessage of RadarSector and is not intended~%# to be used separately. It represents intensities from a~%# single ray.~%~%# Series of intensities from closest to farthest~%# along a given angle increment. [device-specific units]~%float32[] echoes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarEcho)))
  "Returns full string definition for message of type 'RadarEcho"
  (cl:format cl:nil "# This message is a submessage of RadarSector and is not intended~%# to be used separately. It represents intensities from a~%# single ray.~%~%# Series of intensities from closest to farthest~%# along a given angle increment. [device-specific units]~%float32[] echoes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarEcho>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'echoes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarEcho>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarEcho
    (cl:cons ':echoes (echoes msg))
))
