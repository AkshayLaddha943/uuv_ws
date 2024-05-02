; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude DetectionFlag.msg.html

(cl:defclass <DetectionFlag> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DetectionFlag (<DetectionFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<DetectionFlag> is deprecated: use marine_acoustic_msgs-msg:DetectionFlag instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <DetectionFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:flag-val is deprecated.  Use marine_acoustic_msgs-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DetectionFlag>)))
    "Constants for message type '<DetectionFlag>"
  '((:DETECT_OK . 0)
    (:DETECT_BAD_SONAR . 1)
    (:DETECT_BAD_FILTER . 2)
    (:DETECT_BAD_USER . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DetectionFlag)))
    "Constants for message type 'DetectionFlag"
  '((:DETECT_OK . 0)
    (:DETECT_BAD_SONAR . 1)
    (:DETECT_BAD_FILTER . 2)
    (:DETECT_BAD_USER . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionFlag>) ostream)
  "Serializes a message object of type '<DetectionFlag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionFlag>) istream)
  "Deserializes a message object of type '<DetectionFlag>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionFlag>)))
  "Returns string type for a message object of type '<DetectionFlag>"
  "marine_acoustic_msgs/DetectionFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionFlag)))
  "Returns string type for a message object of type 'DetectionFlag"
  "marine_acoustic_msgs/DetectionFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionFlag>)))
  "Returns md5sum for a message object of type '<DetectionFlag>"
  "2c45bd69e61e55c2962ccd8337e7d00d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionFlag)))
  "Returns md5sum for a message object of type 'DetectionFlag"
  "2c45bd69e61e55c2962ccd8337e7d00d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionFlag>)))
  "Returns full string definition for message of type '<DetectionFlag>"
  (cl:format cl:nil "# Beam is OK~%uint8 DETECT_OK = 0~%# Beam is flagged as bad by the sonar.  Think hard before second-guessing~%uint8 DETECT_BAD_SONAR = 1~%# Beam is flagged as bad by some automated filter applied during processing.~%uint8 DETECT_BAD_FILTER = 2~%# Beam is flagged as bad by the user. This is probably not happening in~%# realtime, but is included here so the same message can be used throughout~%# a post-processing pipeline.~%uint8 DETECT_BAD_USER = 4~%~%# These arrays should have the same dimensions, and should match~%# the number of beams for this sonar.~%#~%# Some fields are optional.  Those should have 0 length.~%~%# Flag values for every beam~%uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionFlag)))
  "Returns full string definition for message of type 'DetectionFlag"
  (cl:format cl:nil "# Beam is OK~%uint8 DETECT_OK = 0~%# Beam is flagged as bad by the sonar.  Think hard before second-guessing~%uint8 DETECT_BAD_SONAR = 1~%# Beam is flagged as bad by some automated filter applied during processing.~%uint8 DETECT_BAD_FILTER = 2~%# Beam is flagged as bad by the user. This is probably not happening in~%# realtime, but is included here so the same message can be used throughout~%# a post-processing pipeline.~%uint8 DETECT_BAD_USER = 4~%~%# These arrays should have the same dimensions, and should match~%# the number of beams for this sonar.~%#~%# Some fields are optional.  Those should have 0 length.~%~%# Flag values for every beam~%uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionFlag>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionFlag
    (cl:cons ':flag (flag msg))
))
