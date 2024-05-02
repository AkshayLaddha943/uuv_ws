; Auto-generated. Do not edit!


(cl:in-package rti_dvl-msg)


;//! \htmlinclude BottomTrack.msg.html

(cl:defclass <BottomTrack> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type rti_dvl-msg:Command
    :initform (cl:make-instance 'rti_dvl-msg:Command))
   (sample
    :reader sample
    :initarg :sample
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass BottomTrack (<BottomTrack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BottomTrack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BottomTrack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rti_dvl-msg:<BottomTrack> is deprecated: use rti_dvl-msg:BottomTrack instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:header-val is deprecated.  Use rti_dvl-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:command-val is deprecated.  Use rti_dvl-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'sample-val :lambda-list '(m))
(cl:defmethod sample-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:sample-val is deprecated.  Use rti_dvl-msg:sample instead.")
  (sample m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:time-val is deprecated.  Use rti_dvl-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:velocity-val is deprecated.  Use rti_dvl-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:orientation-val is deprecated.  Use rti_dvl-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:temperature-val is deprecated.  Use rti_dvl-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:altitude-val is deprecated.  Use rti_dvl-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <BottomTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:pressure-val is deprecated.  Use rti_dvl-msg:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BottomTrack>) ostream)
  "Serializes a message object of type '<BottomTrack>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sample)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sample)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BottomTrack>) istream)
  "Deserializes a message object of type '<BottomTrack>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sample)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BottomTrack>)))
  "Returns string type for a message object of type '<BottomTrack>"
  "rti_dvl/BottomTrack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BottomTrack)))
  "Returns string type for a message object of type 'BottomTrack"
  "rti_dvl/BottomTrack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BottomTrack>)))
  "Returns md5sum for a message object of type '<BottomTrack>"
  "e236d20adc4e75be05aff82938ad572b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BottomTrack)))
  "Returns md5sum for a message object of type 'BottomTrack"
  "e236d20adc4e75be05aff82938ad572b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BottomTrack>)))
  "Returns full string definition for message of type '<BottomTrack>"
  (cl:format cl:nil "Header header~%rti_dvl/Command command~%~%# Sample number~%uint64 sample~%# Start time of the sample in second~%float64 time~%# Velocity in m/s in body frame~%geometry_msgs/Vector3 velocity~%# Orientation (roll, pitch, yaw) at the sample~%geometry_msgs/Vector3 orientation~%# Temperature in Celsius~%float64 temperature~%# Depth below transducer in m~%float64 altitude~%# Pressure in BAR~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rti_dvl/Command~%# Subsystem Configuration~%# 3: 600 kHz 4 beam 20 degree piston~%string CEPO ~%~%# CEAUTOSTART On/OFF~%# 0	OFF~%# 1	DO NOT USE~%# 2	RS232~%# 3	RS485~%# 4	RS422~%# 5	EMAC~%# 6	UDP~%string CEAUTOSTART~%~%# Ensemble output period in HH:MM:SS.hh~%string CEI~%~%# Output format~%# [1] - RoweTech Binary (RTB)~%# [1] - RoweTech DVL (RTD)~%# [2] - ASCII Format~%# [2] - DVL Format~%# [3] - NMEA Status String~%# [4] - Ocean Server NMEA DVL Format~%# [5] - DVL Format~%# [100] - PD0~%# [103] - PD3 Binary Format~%# [104] - PD4 Binary Format~%# [105] - PD5 Binary Format~%# [106] - PD6 ASCII Format~%# [113] - PD13 ASCII Format~%string C485OUT ~%string C232OUT ~%~%# 1 - Turn ON Bottom Tracking~%# 0 - Turn OFF Bottom Tracking~%string CBTON~%~%# Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.~%# n, m, d, x~%# [n] - Transmit Pulse Type and Processing~%#     0 = Narrowband.~%#     Provides long range profiles at the expense of variance.~%#     Not recommended for use with bin size less than the default bin size.~%#     1 = Broadband.~%#     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).~%#     Used in conjunction with CWPBP for small bins.~%#     2 = Un-coded Broadband (no ambiguity resolver).~%#     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.~%#     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).~%#     Provides ultra low variance for small bin sizes.~%#     7 = Auto Switch (n=0, n=2, n=4)~%# [m] - Lag length in vertical meters (m)~%#     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    ~%# [d] - Long Range Narrowband Auto Switch Depth (m)~%#     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.~%# [x] - Beam Multiplex~%#     1 = ping and process each beam one at a time.~%#     2 = ping and process beam pairs.~%#     4 = ping and process all four beams together.~%string CBTBB~%~%# Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.~%string CBTMX~%~%# Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.~%# n.nn, m.mm~%#     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.~%#     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.~%string CBTBL~%~%# Bottom Track thresholds.~%# a,b,c,d~%#     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so \"b\" allows for two different SNR settings one for shallow (\"a\") and one for deep (\"c\").~%#     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the \"d\" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the \"d\" setting you may need set \"d\" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.~%string CBTT~%~%# Not used for bottom tracking only~%# This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.~%string CBTTBP~%~%# Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.~%# c.cc,q.qq,v.vv~%#     [c.cc] - Correlation threshold.~%#     [q.qq] - Error Velocity threshold. Range: m/s~%#     [v.vv] - Velocity threshold. Range: m/s~%string CBTST~%~%# Low pass filtering helps reduce velocity measurement noise~%# a,b,c,d,e~%# We do not recommend that the filter be enabled.~%string CBTFILT~%~%# Water Speed of Sound Control.~%# 1, 2, 3, 4~%#     [1] - Water Temperature Source~%#     [2] - Transducer Depth Source~%#     [3] - Salinity Source~%#     [4] - Speed of Sound Source~%# Choices~%#     0 = Command~%#     1 = Sensor~%#     2 = Internal Calculation.~%string CWSSC~%~%# Water Salinity (ppt). Used in the water speed of sound calculation~%string CWS~%~%# Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.~%string CWT~%~%# Transducer Depth (meters). Used in the water speed of sound calculation.~%string CTD~%~%# Water Speed of Sound (meters per second).~%string CWSS~%~%# This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.~%string CHO~%# Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.~%string CHS~%# Tilt Source. Set whether to use the tilt from internal compass or no tilt.~%string CTS~%~%# Velocity Scale Factor~%#  n.nn, m.mm~%#     [n.nn] - Water Velocity Scale Factor~%#     [m.mm] - Bottom Track Scale Factor~%string CVSF~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BottomTrack)))
  "Returns full string definition for message of type 'BottomTrack"
  (cl:format cl:nil "Header header~%rti_dvl/Command command~%~%# Sample number~%uint64 sample~%# Start time of the sample in second~%float64 time~%# Velocity in m/s in body frame~%geometry_msgs/Vector3 velocity~%# Orientation (roll, pitch, yaw) at the sample~%geometry_msgs/Vector3 orientation~%# Temperature in Celsius~%float64 temperature~%# Depth below transducer in m~%float64 altitude~%# Pressure in BAR~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rti_dvl/Command~%# Subsystem Configuration~%# 3: 600 kHz 4 beam 20 degree piston~%string CEPO ~%~%# CEAUTOSTART On/OFF~%# 0	OFF~%# 1	DO NOT USE~%# 2	RS232~%# 3	RS485~%# 4	RS422~%# 5	EMAC~%# 6	UDP~%string CEAUTOSTART~%~%# Ensemble output period in HH:MM:SS.hh~%string CEI~%~%# Output format~%# [1] - RoweTech Binary (RTB)~%# [1] - RoweTech DVL (RTD)~%# [2] - ASCII Format~%# [2] - DVL Format~%# [3] - NMEA Status String~%# [4] - Ocean Server NMEA DVL Format~%# [5] - DVL Format~%# [100] - PD0~%# [103] - PD3 Binary Format~%# [104] - PD4 Binary Format~%# [105] - PD5 Binary Format~%# [106] - PD6 ASCII Format~%# [113] - PD13 ASCII Format~%string C485OUT ~%string C232OUT ~%~%# 1 - Turn ON Bottom Tracking~%# 0 - Turn OFF Bottom Tracking~%string CBTON~%~%# Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.~%# n, m, d, x~%# [n] - Transmit Pulse Type and Processing~%#     0 = Narrowband.~%#     Provides long range profiles at the expense of variance.~%#     Not recommended for use with bin size less than the default bin size.~%#     1 = Broadband.~%#     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).~%#     Used in conjunction with CWPBP for small bins.~%#     2 = Un-coded Broadband (no ambiguity resolver).~%#     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.~%#     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).~%#     Provides ultra low variance for small bin sizes.~%#     7 = Auto Switch (n=0, n=2, n=4)~%# [m] - Lag length in vertical meters (m)~%#     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    ~%# [d] - Long Range Narrowband Auto Switch Depth (m)~%#     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.~%# [x] - Beam Multiplex~%#     1 = ping and process each beam one at a time.~%#     2 = ping and process beam pairs.~%#     4 = ping and process all four beams together.~%string CBTBB~%~%# Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.~%string CBTMX~%~%# Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.~%# n.nn, m.mm~%#     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.~%#     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.~%string CBTBL~%~%# Bottom Track thresholds.~%# a,b,c,d~%#     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so \"b\" allows for two different SNR settings one for shallow (\"a\") and one for deep (\"c\").~%#     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the \"d\" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the \"d\" setting you may need set \"d\" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.~%string CBTT~%~%# Not used for bottom tracking only~%# This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.~%string CBTTBP~%~%# Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.~%# c.cc,q.qq,v.vv~%#     [c.cc] - Correlation threshold.~%#     [q.qq] - Error Velocity threshold. Range: m/s~%#     [v.vv] - Velocity threshold. Range: m/s~%string CBTST~%~%# Low pass filtering helps reduce velocity measurement noise~%# a,b,c,d,e~%# We do not recommend that the filter be enabled.~%string CBTFILT~%~%# Water Speed of Sound Control.~%# 1, 2, 3, 4~%#     [1] - Water Temperature Source~%#     [2] - Transducer Depth Source~%#     [3] - Salinity Source~%#     [4] - Speed of Sound Source~%# Choices~%#     0 = Command~%#     1 = Sensor~%#     2 = Internal Calculation.~%string CWSSC~%~%# Water Salinity (ppt). Used in the water speed of sound calculation~%string CWS~%~%# Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.~%string CWT~%~%# Transducer Depth (meters). Used in the water speed of sound calculation.~%string CTD~%~%# Water Speed of Sound (meters per second).~%string CWSS~%~%# This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.~%string CHO~%# Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.~%string CHS~%# Tilt Source. Set whether to use the tilt from internal compass or no tilt.~%string CTS~%~%# Velocity Scale Factor~%#  n.nn, m.mm~%#     [n.nn] - Water Velocity Scale Factor~%#     [m.mm] - Bottom Track Scale Factor~%string CVSF~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BottomTrack>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BottomTrack>))
  "Converts a ROS message object to a list"
  (cl:list 'BottomTrack
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
    (cl:cons ':sample (sample msg))
    (cl:cons ':time (time msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':pressure (pressure msg))
))
