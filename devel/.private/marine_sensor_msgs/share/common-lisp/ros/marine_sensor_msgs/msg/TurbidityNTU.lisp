; Auto-generated. Do not edit!


(cl:in-package marine_sensor_msgs-msg)


;//! \htmlinclude TurbidityNTU.msg.html

(cl:defclass <TurbidityNTU> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ntu
    :reader ntu
    :initarg :ntu
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurbidityNTU (<TurbidityNTU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurbidityNTU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurbidityNTU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_sensor_msgs-msg:<TurbidityNTU> is deprecated: use marine_sensor_msgs-msg:TurbidityNTU instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TurbidityNTU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:header-val is deprecated.  Use marine_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ntu-val :lambda-list '(m))
(cl:defmethod ntu-val ((m <TurbidityNTU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_sensor_msgs-msg:ntu-val is deprecated.  Use marine_sensor_msgs-msg:ntu instead.")
  (ntu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurbidityNTU>) ostream)
  "Serializes a message object of type '<TurbidityNTU>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ntu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurbidityNTU>) istream)
  "Deserializes a message object of type '<TurbidityNTU>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ntu) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurbidityNTU>)))
  "Returns string type for a message object of type '<TurbidityNTU>"
  "marine_sensor_msgs/TurbidityNTU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurbidityNTU)))
  "Returns string type for a message object of type 'TurbidityNTU"
  "marine_sensor_msgs/TurbidityNTU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurbidityNTU>)))
  "Returns md5sum for a message object of type '<TurbidityNTU>"
  "b4b87124a72fd9382c32394b1c07b23b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurbidityNTU)))
  "Returns md5sum for a message object of type 'TurbidityNTU"
  "b4b87124a72fd9382c32394b1c07b23b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurbidityNTU>)))
  "Returns full string definition for message of type '<TurbidityNTU>"
  (cl:format cl:nil "std_msgs/Header header~%float32 ntu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurbidityNTU)))
  "Returns full string definition for message of type 'TurbidityNTU"
  (cl:format cl:nil "std_msgs/Header header~%float32 ntu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurbidityNTU>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurbidityNTU>))
  "Converts a ROS message object to a list"
  (cl:list 'TurbidityNTU
    (cl:cons ':header (header msg))
    (cl:cons ':ntu (ntu msg))
))
