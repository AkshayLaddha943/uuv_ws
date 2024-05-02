; Auto-generated. Do not edit!


(cl:in-package bruce_msgs-srv)


;//! \htmlinclude QueryExplorationPath-request.msg.html

(cl:defclass <QueryExplorationPath-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass QueryExplorationPath-request (<QueryExplorationPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryExplorationPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryExplorationPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<QueryExplorationPath-request> is deprecated: use bruce_msgs-srv:QueryExplorationPath-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryExplorationPath-request>) ostream)
  "Serializes a message object of type '<QueryExplorationPath-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryExplorationPath-request>) istream)
  "Deserializes a message object of type '<QueryExplorationPath-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryExplorationPath-request>)))
  "Returns string type for a service object of type '<QueryExplorationPath-request>"
  "bruce_msgs/QueryExplorationPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryExplorationPath-request)))
  "Returns string type for a service object of type 'QueryExplorationPath-request"
  "bruce_msgs/QueryExplorationPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryExplorationPath-request>)))
  "Returns md5sum for a message object of type '<QueryExplorationPath-request>"
  "d6d0f6f88862321f9f30fe0e54019c85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryExplorationPath-request)))
  "Returns md5sum for a message object of type 'QueryExplorationPath-request"
  "d6d0f6f88862321f9f30fe0e54019c85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryExplorationPath-request>)))
  "Returns full string definition for message of type '<QueryExplorationPath-request>"
  (cl:format cl:nil "# Empty request~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryExplorationPath-request)))
  "Returns full string definition for message of type 'QueryExplorationPath-request"
  (cl:format cl:nil "# Empty request~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryExplorationPath-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryExplorationPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryExplorationPath-request
))
;//! \htmlinclude QueryExplorationPath-response.msg.html

(cl:defclass <QueryExplorationPath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass QueryExplorationPath-response (<QueryExplorationPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryExplorationPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryExplorationPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<QueryExplorationPath-response> is deprecated: use bruce_msgs-srv:QueryExplorationPath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <QueryExplorationPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:path-val is deprecated.  Use bruce_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <QueryExplorationPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:type-val is deprecated.  Use bruce_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryExplorationPath-response>) ostream)
  "Serializes a message object of type '<QueryExplorationPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryExplorationPath-response>) istream)
  "Deserializes a message object of type '<QueryExplorationPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryExplorationPath-response>)))
  "Returns string type for a service object of type '<QueryExplorationPath-response>"
  "bruce_msgs/QueryExplorationPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryExplorationPath-response)))
  "Returns string type for a service object of type 'QueryExplorationPath-response"
  "bruce_msgs/QueryExplorationPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryExplorationPath-response>)))
  "Returns md5sum for a message object of type '<QueryExplorationPath-response>"
  "d6d0f6f88862321f9f30fe0e54019c85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryExplorationPath-response)))
  "Returns md5sum for a message object of type 'QueryExplorationPath-response"
  "d6d0f6f88862321f9f30fe0e54019c85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryExplorationPath-response>)))
  "Returns full string definition for message of type '<QueryExplorationPath-response>"
  (cl:format cl:nil "~%nav_msgs/Path path~%string type~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryExplorationPath-response)))
  "Returns full string definition for message of type 'QueryExplorationPath-response"
  (cl:format cl:nil "~%nav_msgs/Path path~%string type~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryExplorationPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryExplorationPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryExplorationPath-response
    (cl:cons ':path (path msg))
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryExplorationPath)))
  'QueryExplorationPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryExplorationPath)))
  'QueryExplorationPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryExplorationPath)))
  "Returns string type for a service object of type '<QueryExplorationPath>"
  "bruce_msgs/QueryExplorationPath")