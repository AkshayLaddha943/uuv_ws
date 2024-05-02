;; Auto-generated. Do not edit!


(when (boundp 'rti_dvl::Command)
  (if (not (find-package "RTI_DVL"))
    (make-package "RTI_DVL"))
  (shadow 'Command (find-package "RTI_DVL")))
(unless (find-package "RTI_DVL::COMMAND")
  (make-package "RTI_DVL::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass rti_dvl::Command
  :super ros::object
  :slots (_CEPO _CEAUTOSTART _CEI _C485OUT _C232OUT _CBTON _CBTBB _CBTMX _CBTBL _CBTT _CBTTBP _CBTST _CBTFILT _CWSSC _CWS _CWT _CTD _CWSS _CHO _CHS _CTS _CVSF ))

(defmethod rti_dvl::Command
  (:init
   (&key
    ((:CEPO __CEPO) "")
    ((:CEAUTOSTART __CEAUTOSTART) "")
    ((:CEI __CEI) "")
    ((:C485OUT __C485OUT) "")
    ((:C232OUT __C232OUT) "")
    ((:CBTON __CBTON) "")
    ((:CBTBB __CBTBB) "")
    ((:CBTMX __CBTMX) "")
    ((:CBTBL __CBTBL) "")
    ((:CBTT __CBTT) "")
    ((:CBTTBP __CBTTBP) "")
    ((:CBTST __CBTST) "")
    ((:CBTFILT __CBTFILT) "")
    ((:CWSSC __CWSSC) "")
    ((:CWS __CWS) "")
    ((:CWT __CWT) "")
    ((:CTD __CTD) "")
    ((:CWSS __CWSS) "")
    ((:CHO __CHO) "")
    ((:CHS __CHS) "")
    ((:CTS __CTS) "")
    ((:CVSF __CVSF) "")
    )
   (send-super :init)
   (setq _CEPO (string __CEPO))
   (setq _CEAUTOSTART (string __CEAUTOSTART))
   (setq _CEI (string __CEI))
   (setq _C485OUT (string __C485OUT))
   (setq _C232OUT (string __C232OUT))
   (setq _CBTON (string __CBTON))
   (setq _CBTBB (string __CBTBB))
   (setq _CBTMX (string __CBTMX))
   (setq _CBTBL (string __CBTBL))
   (setq _CBTT (string __CBTT))
   (setq _CBTTBP (string __CBTTBP))
   (setq _CBTST (string __CBTST))
   (setq _CBTFILT (string __CBTFILT))
   (setq _CWSSC (string __CWSSC))
   (setq _CWS (string __CWS))
   (setq _CWT (string __CWT))
   (setq _CTD (string __CTD))
   (setq _CWSS (string __CWSS))
   (setq _CHO (string __CHO))
   (setq _CHS (string __CHS))
   (setq _CTS (string __CTS))
   (setq _CVSF (string __CVSF))
   self)
  (:CEPO
   (&optional __CEPO)
   (if __CEPO (setq _CEPO __CEPO)) _CEPO)
  (:CEAUTOSTART
   (&optional __CEAUTOSTART)
   (if __CEAUTOSTART (setq _CEAUTOSTART __CEAUTOSTART)) _CEAUTOSTART)
  (:CEI
   (&optional __CEI)
   (if __CEI (setq _CEI __CEI)) _CEI)
  (:C485OUT
   (&optional __C485OUT)
   (if __C485OUT (setq _C485OUT __C485OUT)) _C485OUT)
  (:C232OUT
   (&optional __C232OUT)
   (if __C232OUT (setq _C232OUT __C232OUT)) _C232OUT)
  (:CBTON
   (&optional __CBTON)
   (if __CBTON (setq _CBTON __CBTON)) _CBTON)
  (:CBTBB
   (&optional __CBTBB)
   (if __CBTBB (setq _CBTBB __CBTBB)) _CBTBB)
  (:CBTMX
   (&optional __CBTMX)
   (if __CBTMX (setq _CBTMX __CBTMX)) _CBTMX)
  (:CBTBL
   (&optional __CBTBL)
   (if __CBTBL (setq _CBTBL __CBTBL)) _CBTBL)
  (:CBTT
   (&optional __CBTT)
   (if __CBTT (setq _CBTT __CBTT)) _CBTT)
  (:CBTTBP
   (&optional __CBTTBP)
   (if __CBTTBP (setq _CBTTBP __CBTTBP)) _CBTTBP)
  (:CBTST
   (&optional __CBTST)
   (if __CBTST (setq _CBTST __CBTST)) _CBTST)
  (:CBTFILT
   (&optional __CBTFILT)
   (if __CBTFILT (setq _CBTFILT __CBTFILT)) _CBTFILT)
  (:CWSSC
   (&optional __CWSSC)
   (if __CWSSC (setq _CWSSC __CWSSC)) _CWSSC)
  (:CWS
   (&optional __CWS)
   (if __CWS (setq _CWS __CWS)) _CWS)
  (:CWT
   (&optional __CWT)
   (if __CWT (setq _CWT __CWT)) _CWT)
  (:CTD
   (&optional __CTD)
   (if __CTD (setq _CTD __CTD)) _CTD)
  (:CWSS
   (&optional __CWSS)
   (if __CWSS (setq _CWSS __CWSS)) _CWSS)
  (:CHO
   (&optional __CHO)
   (if __CHO (setq _CHO __CHO)) _CHO)
  (:CHS
   (&optional __CHS)
   (if __CHS (setq _CHS __CHS)) _CHS)
  (:CTS
   (&optional __CTS)
   (if __CTS (setq _CTS __CTS)) _CTS)
  (:CVSF
   (&optional __CVSF)
   (if __CVSF (setq _CVSF __CVSF)) _CVSF)
  (:serialization-length
   ()
   (+
    ;; string _CEPO
    4 (length _CEPO)
    ;; string _CEAUTOSTART
    4 (length _CEAUTOSTART)
    ;; string _CEI
    4 (length _CEI)
    ;; string _C485OUT
    4 (length _C485OUT)
    ;; string _C232OUT
    4 (length _C232OUT)
    ;; string _CBTON
    4 (length _CBTON)
    ;; string _CBTBB
    4 (length _CBTBB)
    ;; string _CBTMX
    4 (length _CBTMX)
    ;; string _CBTBL
    4 (length _CBTBL)
    ;; string _CBTT
    4 (length _CBTT)
    ;; string _CBTTBP
    4 (length _CBTTBP)
    ;; string _CBTST
    4 (length _CBTST)
    ;; string _CBTFILT
    4 (length _CBTFILT)
    ;; string _CWSSC
    4 (length _CWSSC)
    ;; string _CWS
    4 (length _CWS)
    ;; string _CWT
    4 (length _CWT)
    ;; string _CTD
    4 (length _CTD)
    ;; string _CWSS
    4 (length _CWSS)
    ;; string _CHO
    4 (length _CHO)
    ;; string _CHS
    4 (length _CHS)
    ;; string _CTS
    4 (length _CTS)
    ;; string _CVSF
    4 (length _CVSF)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _CEPO
       (write-long (length _CEPO) s) (princ _CEPO s)
     ;; string _CEAUTOSTART
       (write-long (length _CEAUTOSTART) s) (princ _CEAUTOSTART s)
     ;; string _CEI
       (write-long (length _CEI) s) (princ _CEI s)
     ;; string _C485OUT
       (write-long (length _C485OUT) s) (princ _C485OUT s)
     ;; string _C232OUT
       (write-long (length _C232OUT) s) (princ _C232OUT s)
     ;; string _CBTON
       (write-long (length _CBTON) s) (princ _CBTON s)
     ;; string _CBTBB
       (write-long (length _CBTBB) s) (princ _CBTBB s)
     ;; string _CBTMX
       (write-long (length _CBTMX) s) (princ _CBTMX s)
     ;; string _CBTBL
       (write-long (length _CBTBL) s) (princ _CBTBL s)
     ;; string _CBTT
       (write-long (length _CBTT) s) (princ _CBTT s)
     ;; string _CBTTBP
       (write-long (length _CBTTBP) s) (princ _CBTTBP s)
     ;; string _CBTST
       (write-long (length _CBTST) s) (princ _CBTST s)
     ;; string _CBTFILT
       (write-long (length _CBTFILT) s) (princ _CBTFILT s)
     ;; string _CWSSC
       (write-long (length _CWSSC) s) (princ _CWSSC s)
     ;; string _CWS
       (write-long (length _CWS) s) (princ _CWS s)
     ;; string _CWT
       (write-long (length _CWT) s) (princ _CWT s)
     ;; string _CTD
       (write-long (length _CTD) s) (princ _CTD s)
     ;; string _CWSS
       (write-long (length _CWSS) s) (princ _CWSS s)
     ;; string _CHO
       (write-long (length _CHO) s) (princ _CHO s)
     ;; string _CHS
       (write-long (length _CHS) s) (princ _CHS s)
     ;; string _CTS
       (write-long (length _CTS) s) (princ _CTS s)
     ;; string _CVSF
       (write-long (length _CVSF) s) (princ _CVSF s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _CEPO
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CEPO (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CEAUTOSTART
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CEAUTOSTART (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CEI
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CEI (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _C485OUT
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _C485OUT (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _C232OUT
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _C232OUT (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTON
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTON (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTBB
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTBB (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTMX
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTMX (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTBL
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTBL (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTT
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTT (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTTBP
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTTBP (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTST
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTST (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CBTFILT
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CBTFILT (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CWSSC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CWSSC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CWS
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CWS (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CWT
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CWT (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CTD
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CTD (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CWSS
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CWSS (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CHO
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CHO (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CHS
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CHS (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CTS
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CTS (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CVSF
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CVSF (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rti_dvl::Command :md5sum-) "b4a778ac84916e4541ed9df1cd1fc61c")
(setf (get rti_dvl::Command :datatype-) "rti_dvl/Command")
(setf (get rti_dvl::Command :definition-)
      "# Subsystem Configuration
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

")



(provide :rti_dvl/Command "b4a778ac84916e4541ed9df1cd1fc61c")


