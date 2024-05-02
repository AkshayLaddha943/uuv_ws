; Auto-generated. Do not edit!


(cl:in-package bruce_msgs-srv)


;//! \htmlinclude PredictSLAMUpdate-request.msg.html

(cl:defclass <PredictSLAMUpdate-request> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (return_isam2_update
    :reader return_isam2_update
    :initarg :return_isam2_update
    :type cl:boolean
    :initform cl:nil)
   (paths
    :reader paths
    :initarg :paths
    :type (cl:vector nav_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'nav_msgs-msg:Path :initial-element (cl:make-instance 'nav_msgs-msg:Path))))
)

(cl:defclass PredictSLAMUpdate-request (<PredictSLAMUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictSLAMUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictSLAMUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<PredictSLAMUpdate-request> is deprecated: use bruce_msgs-srv:PredictSLAMUpdate-request instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <PredictSLAMUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:key-val is deprecated.  Use bruce_msgs-srv:key instead.")
  (key m))

(cl:ensure-generic-function 'return_isam2_update-val :lambda-list '(m))
(cl:defmethod return_isam2_update-val ((m <PredictSLAMUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:return_isam2_update-val is deprecated.  Use bruce_msgs-srv:return_isam2_update instead.")
  (return_isam2_update m))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <PredictSLAMUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:paths-val is deprecated.  Use bruce_msgs-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictSLAMUpdate-request>) ostream)
  "Serializes a message object of type '<PredictSLAMUpdate-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_isam2_update) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictSLAMUpdate-request>) istream)
  "Deserializes a message object of type '<PredictSLAMUpdate-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'return_isam2_update) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictSLAMUpdate-request>)))
  "Returns string type for a service object of type '<PredictSLAMUpdate-request>"
  "bruce_msgs/PredictSLAMUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictSLAMUpdate-request)))
  "Returns string type for a service object of type 'PredictSLAMUpdate-request"
  "bruce_msgs/PredictSLAMUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictSLAMUpdate-request>)))
  "Returns md5sum for a message object of type '<PredictSLAMUpdate-request>"
  "18a5f92af2249a995192f2aa3a6de24b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictSLAMUpdate-request)))
  "Returns md5sum for a message object of type 'PredictSLAMUpdate-request"
  "18a5f92af2249a995192f2aa3a6de24b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictSLAMUpdate-request>)))
  "Returns full string definition for message of type '<PredictSLAMUpdate-request>"
  (cl:format cl:nil "uint32 key~%bool return_isam2_update~%nav_msgs/Path[] paths~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictSLAMUpdate-request)))
  "Returns full string definition for message of type 'PredictSLAMUpdate-request"
  (cl:format cl:nil "uint32 key~%bool return_isam2_update~%nav_msgs/Path[] paths~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictSLAMUpdate-request>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictSLAMUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictSLAMUpdate-request
    (cl:cons ':key (key msg))
    (cl:cons ':return_isam2_update (return_isam2_update msg))
    (cl:cons ':paths (paths msg))
))
;//! \htmlinclude PredictSLAMUpdate-response.msg.html

(cl:defclass <PredictSLAMUpdate-response> (roslisp-msg-protocol:ros-message)
  ((isam2_updates
    :reader isam2_updates
    :initarg :isam2_updates
    :type (cl:vector bruce_msgs-msg:ISAM2Update)
   :initform (cl:make-array 0 :element-type 'bruce_msgs-msg:ISAM2Update :initial-element (cl:make-instance 'bruce_msgs-msg:ISAM2Update)))
   (keyframes
    :reader keyframes
    :initarg :keyframes
    :type (cl:vector nav_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'nav_msgs-msg:Path :initial-element (cl:make-instance 'nav_msgs-msg:Path))))
)

(cl:defclass PredictSLAMUpdate-response (<PredictSLAMUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictSLAMUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictSLAMUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<PredictSLAMUpdate-response> is deprecated: use bruce_msgs-srv:PredictSLAMUpdate-response instead.")))

(cl:ensure-generic-function 'isam2_updates-val :lambda-list '(m))
(cl:defmethod isam2_updates-val ((m <PredictSLAMUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:isam2_updates-val is deprecated.  Use bruce_msgs-srv:isam2_updates instead.")
  (isam2_updates m))

(cl:ensure-generic-function 'keyframes-val :lambda-list '(m))
(cl:defmethod keyframes-val ((m <PredictSLAMUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:keyframes-val is deprecated.  Use bruce_msgs-srv:keyframes instead.")
  (keyframes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictSLAMUpdate-response>) ostream)
  "Serializes a message object of type '<PredictSLAMUpdate-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'isam2_updates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'isam2_updates))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keyframes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keyframes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictSLAMUpdate-response>) istream)
  "Deserializes a message object of type '<PredictSLAMUpdate-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'isam2_updates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'isam2_updates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bruce_msgs-msg:ISAM2Update))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keyframes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keyframes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictSLAMUpdate-response>)))
  "Returns string type for a service object of type '<PredictSLAMUpdate-response>"
  "bruce_msgs/PredictSLAMUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictSLAMUpdate-response)))
  "Returns string type for a service object of type 'PredictSLAMUpdate-response"
  "bruce_msgs/PredictSLAMUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictSLAMUpdate-response>)))
  "Returns md5sum for a message object of type '<PredictSLAMUpdate-response>"
  "18a5f92af2249a995192f2aa3a6de24b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictSLAMUpdate-response)))
  "Returns md5sum for a message object of type 'PredictSLAMUpdate-response"
  "18a5f92af2249a995192f2aa3a6de24b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictSLAMUpdate-response>)))
  "Returns full string definition for message of type '<PredictSLAMUpdate-response>"
  (cl:format cl:nil "bruce_msgs/ISAM2Update[] isam2_updates~%nav_msgs/Path[] keyframes~%~%~%================================================================================~%MSG: bruce_msgs/ISAM2Update~%Header header~%uint32 key~%uint8[] isam2~%uint8[] graph~%uint8[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictSLAMUpdate-response)))
  "Returns full string definition for message of type 'PredictSLAMUpdate-response"
  (cl:format cl:nil "bruce_msgs/ISAM2Update[] isam2_updates~%nav_msgs/Path[] keyframes~%~%~%================================================================================~%MSG: bruce_msgs/ISAM2Update~%Header header~%uint32 key~%uint8[] isam2~%uint8[] graph~%uint8[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictSLAMUpdate-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'isam2_updates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keyframes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictSLAMUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictSLAMUpdate-response
    (cl:cons ':isam2_updates (isam2_updates msg))
    (cl:cons ':keyframes (keyframes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PredictSLAMUpdate)))
  'PredictSLAMUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PredictSLAMUpdate)))
  'PredictSLAMUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictSLAMUpdate)))
  "Returns string type for a service object of type '<PredictSLAMUpdate>"
  "bruce_msgs/PredictSLAMUpdate")