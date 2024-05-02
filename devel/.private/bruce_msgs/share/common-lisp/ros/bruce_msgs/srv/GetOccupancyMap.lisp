; Auto-generated. Do not edit!


(cl:in-package bruce_msgs-srv)


;//! \htmlinclude GetOccupancyMap-request.msg.html

(cl:defclass <GetOccupancyMap-request> (roslisp-msg-protocol:ros-message)
  ((frames
    :reader frames
    :initarg :frames
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetOccupancyMap-request (<GetOccupancyMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOccupancyMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOccupancyMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<GetOccupancyMap-request> is deprecated: use bruce_msgs-srv:GetOccupancyMap-request instead.")))

(cl:ensure-generic-function 'frames-val :lambda-list '(m))
(cl:defmethod frames-val ((m <GetOccupancyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:frames-val is deprecated.  Use bruce_msgs-srv:frames instead.")
  (frames m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <GetOccupancyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:resolution-val is deprecated.  Use bruce_msgs-srv:resolution instead.")
  (resolution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOccupancyMap-request>) ostream)
  "Serializes a message object of type '<GetOccupancyMap-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'frames))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOccupancyMap-request>) istream)
  "Deserializes a message object of type '<GetOccupancyMap-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOccupancyMap-request>)))
  "Returns string type for a service object of type '<GetOccupancyMap-request>"
  "bruce_msgs/GetOccupancyMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOccupancyMap-request)))
  "Returns string type for a service object of type 'GetOccupancyMap-request"
  "bruce_msgs/GetOccupancyMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOccupancyMap-request>)))
  "Returns md5sum for a message object of type '<GetOccupancyMap-request>"
  "85f4445a9d44297d096f4d7339d7a4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOccupancyMap-request)))
  "Returns md5sum for a message object of type 'GetOccupancyMap-request"
  "85f4445a9d44297d096f4d7339d7a4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOccupancyMap-request>)))
  "Returns full string definition for message of type '<GetOccupancyMap-request>"
  (cl:format cl:nil "uint32[] frames~%float32 resolution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOccupancyMap-request)))
  "Returns full string definition for message of type 'GetOccupancyMap-request"
  (cl:format cl:nil "uint32[] frames~%float32 resolution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOccupancyMap-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOccupancyMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOccupancyMap-request
    (cl:cons ':frames (frames msg))
    (cl:cons ':resolution (resolution msg))
))
;//! \htmlinclude GetOccupancyMap-response.msg.html

(cl:defclass <GetOccupancyMap-response> (roslisp-msg-protocol:ros-message)
  ((occ
    :reader occ
    :initarg :occ
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass GetOccupancyMap-response (<GetOccupancyMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOccupancyMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOccupancyMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bruce_msgs-srv:<GetOccupancyMap-response> is deprecated: use bruce_msgs-srv:GetOccupancyMap-response instead.")))

(cl:ensure-generic-function 'occ-val :lambda-list '(m))
(cl:defmethod occ-val ((m <GetOccupancyMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bruce_msgs-srv:occ-val is deprecated.  Use bruce_msgs-srv:occ instead.")
  (occ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOccupancyMap-response>) ostream)
  "Serializes a message object of type '<GetOccupancyMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occ) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOccupancyMap-response>) istream)
  "Deserializes a message object of type '<GetOccupancyMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occ) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOccupancyMap-response>)))
  "Returns string type for a service object of type '<GetOccupancyMap-response>"
  "bruce_msgs/GetOccupancyMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOccupancyMap-response)))
  "Returns string type for a service object of type 'GetOccupancyMap-response"
  "bruce_msgs/GetOccupancyMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOccupancyMap-response>)))
  "Returns md5sum for a message object of type '<GetOccupancyMap-response>"
  "85f4445a9d44297d096f4d7339d7a4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOccupancyMap-response)))
  "Returns md5sum for a message object of type 'GetOccupancyMap-response"
  "85f4445a9d44297d096f4d7339d7a4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOccupancyMap-response>)))
  "Returns full string definition for message of type '<GetOccupancyMap-response>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid occ~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOccupancyMap-response)))
  "Returns full string definition for message of type 'GetOccupancyMap-response"
  (cl:format cl:nil "nav_msgs/OccupancyGrid occ~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOccupancyMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occ))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOccupancyMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOccupancyMap-response
    (cl:cons ':occ (occ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetOccupancyMap)))
  'GetOccupancyMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetOccupancyMap)))
  'GetOccupancyMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOccupancyMap)))
  "Returns string type for a service object of type '<GetOccupancyMap>"
  "bruce_msgs/GetOccupancyMap")