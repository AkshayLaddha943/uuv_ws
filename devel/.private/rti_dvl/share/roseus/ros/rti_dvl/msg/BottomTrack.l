;; Auto-generated. Do not edit!


(when (boundp 'rti_dvl::BottomTrack)
  (if (not (find-package "RTI_DVL"))
    (make-package "RTI_DVL"))
  (shadow 'BottomTrack (find-package "RTI_DVL")))
(unless (find-package "RTI_DVL::BOTTOMTRACK")
  (make-package "RTI_DVL::BOTTOMTRACK"))

(in-package "ROS")
;;//! \htmlinclude BottomTrack.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rti_dvl::BottomTrack
  :super ros::object
  :slots (_header _command _sample _time _velocity _orientation _temperature _altitude _pressure ))

(defmethod rti_dvl::BottomTrack
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) (instance rti_dvl::Command :init))
    ((:sample __sample) 0)
    ((:time __time) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Vector3 :init))
    ((:temperature __temperature) 0.0)
    ((:altitude __altitude) 0.0)
    ((:pressure __pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command __command)
   (setq _sample (round __sample))
   (setq _time (float __time))
   (setq _velocity __velocity)
   (setq _orientation __orientation)
   (setq _temperature (float __temperature))
   (setq _altitude (float __altitude))
   (setq _pressure (float __pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:sample
   (&optional __sample)
   (if __sample (setq _sample __sample)) _sample)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rti_dvl/Command _command
    (send _command :serialization-length)
    ;; uint64 _sample
    8
    ;; float64 _time
    8
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _orientation
    (send _orientation :serialization-length)
    ;; float64 _temperature
    8
    ;; float64 _altitude
    8
    ;; float64 _pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rti_dvl/Command _command
       (send _command :serialize s)
     ;; uint64 _sample
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sample (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sample) (= (length (_sample . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sample . bv) 0) 0) s)
              (write-long (ash (elt (_sample . bv) 1) -1) s))
             ((and (class _sample) (= (length (_sample . bv)) 1)) ;; big1
              (write-long (elt (_sample . bv) 0) s)
              (write-long (if (>= _sample 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sample s)(write-long (if (>= _sample 0) 0 #xffffffff) s)))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _orientation
       (send _orientation :serialize s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rti_dvl/Command _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; uint64 _sample
     
#+(or :alpha :irix6 :x86_64)
      (setf _sample (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sample (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rti_dvl::BottomTrack :md5sum-) "e236d20adc4e75be05aff82938ad572b")
(setf (get rti_dvl::BottomTrack :datatype-) "rti_dvl/BottomTrack")
(setf (get rti_dvl::BottomTrack :definition-)
      "Header header
rti_dvl/Command command

# Sample number
uint64 sample
# Start time of the sample in second
float64 time
# Velocity in m/s in body frame
geometry_msgs/Vector3 velocity
# Orientation (roll, pitch, yaw) at the sample
geometry_msgs/Vector3 orientation
# Temperature in Celsius
float64 temperature
# Depth below transducer in m
float64 altitude
# Pressure in BAR
float64 pressure

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rti_dvl/Command
# Subsystem Configuration
# 3: 600 kHz 4 beam 20 degree piston
string CEPO 

# CEAUTOSTART On/OFF
# 0	OFF
# 1	DO NOT USE
# 2	RS232
# 3	RS485
# 4	RS422
# 5	EMAC
# 6	UDP
string CEAUTOSTART

# Ensemble output period in HH:MM:SS.hh
string CEI

# Output format
# [1] - RoweTech Binary (RTB)
# [1] - RoweTech DVL (RTD)
# [2] - ASCII Format
# [2] - DVL Format
# [3] - NMEA Status String
# [4] - Ocean Server NMEA DVL Format
# [5] - DVL Format
# [100] - PD0
# [103] - PD3 Binary Format
# [104] - PD4 Binary Format
# [105] - PD5 Binary Format
# [106] - PD6 ASCII Format
# [113] - PD13 ASCII Format
string C485OUT 
string C232OUT 

# 1 - Turn ON Bottom Tracking
# 0 - Turn OFF Bottom Tracking
string CBTON

# Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.
# n, m, d, x
# [n] - Transmit Pulse Type and Processing
#     0 = Narrowband.
#     Provides long range profiles at the expense of variance.
#     Not recommended for use with bin size less than the default bin size.
#     1 = Broadband.
#     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).
#     Used in conjunction with CWPBP for small bins.
#     2 = Un-coded Broadband (no ambiguity resolver).
#     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.
#     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).
#     Provides ultra low variance for small bin sizes.
#     7 = Auto Switch (n=0, n=2, n=4)
# [m] - Lag length in vertical meters (m)
#     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    
# [d] - Long Range Narrowband Auto Switch Depth (m)
#     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.
# [x] - Beam Multiplex
#     1 = ping and process each beam one at a time.
#     2 = ping and process beam pairs.
#     4 = ping and process all four beams together.
string CBTBB

# Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.
string CBTMX

# Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.
# n.nn, m.mm
#     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.
#     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.
string CBTBL

# Bottom Track thresholds.
# a,b,c,d
#     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.
#     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so \"b\" allows for two different SNR settings one for shallow (\"a\") and one for deep (\"c\").
#     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.
#     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the \"d\" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the \"d\" setting you may need set \"d\" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.
string CBTT

# Not used for bottom tracking only
# This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.
string CBTTBP

# Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.
# c.cc,q.qq,v.vv
#     [c.cc] - Correlation threshold.
#     [q.qq] - Error Velocity threshold. Range: m/s
#     [v.vv] - Velocity threshold. Range: m/s
string CBTST

# Low pass filtering helps reduce velocity measurement noise
# a,b,c,d,e
# We do not recommend that the filter be enabled.
string CBTFILT

# Water Speed of Sound Control.
# 1, 2, 3, 4
#     [1] - Water Temperature Source
#     [2] - Transducer Depth Source
#     [3] - Salinity Source
#     [4] - Speed of Sound Source
# Choices
#     0 = Command
#     1 = Sensor
#     2 = Internal Calculation.
string CWSSC

# Water Salinity (ppt). Used in the water speed of sound calculation
string CWS

# Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.
string CWT

# Transducer Depth (meters). Used in the water speed of sound calculation.
string CTD

# Water Speed of Sound (meters per second).
string CWSS

# This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.
string CHO
# Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.
string CHS
# Tilt Source. Set whether to use the tilt from internal compass or no tilt.
string CTS

# Velocity Scale Factor
#  n.nn, m.mm
#     [n.nn] - Water Velocity Scale Factor
#     [m.mm] - Bottom Track Scale Factor
string CVSF

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rti_dvl/BottomTrack "e236d20adc4e75be05aff82938ad572b")


