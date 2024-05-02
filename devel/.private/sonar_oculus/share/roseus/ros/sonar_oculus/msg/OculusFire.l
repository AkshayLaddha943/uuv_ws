;; Auto-generated. Do not edit!


(when (boundp 'sonar_oculus::OculusFire)
  (if (not (find-package "SONAR_OCULUS"))
    (make-package "SONAR_OCULUS"))
  (shadow 'OculusFire (find-package "SONAR_OCULUS")))
(unless (find-package "SONAR_OCULUS::OCULUSFIRE")
  (make-package "SONAR_OCULUS::OCULUSFIRE"))

(in-package "ROS")
;;//! \htmlinclude OculusFire.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sonar_oculus::OculusFire
  :super ros::object
  :slots (_header _mode _gamma _flags _range _gain _speed_of_sound _salinity ))

(defmethod sonar_oculus::OculusFire
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:gamma __gamma) 0)
    ((:flags __flags) 0)
    ((:range __range) 0.0)
    ((:gain __gain) 0.0)
    ((:speed_of_sound __speed_of_sound) 0.0)
    ((:salinity __salinity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _gamma (round __gamma))
   (setq _flags (round __flags))
   (setq _range (float __range))
   (setq _gain (float __gain))
   (setq _speed_of_sound (float __speed_of_sound))
   (setq _salinity (float __salinity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:speed_of_sound
   (&optional __speed_of_sound)
   (if __speed_of_sound (setq _speed_of_sound __speed_of_sound)) _speed_of_sound)
  (:salinity
   (&optional __salinity)
   (if __salinity (setq _salinity __salinity)) _salinity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; uint8 _gamma
    1
    ;; uint8 _flags
    1
    ;; float64 _range
    8
    ;; float64 _gain
    8
    ;; float64 _speed_of_sound
    8
    ;; float64 _salinity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _gamma
       (write-byte _gamma s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_of_sound
       (sys::poke _speed_of_sound (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _salinity
       (sys::poke _salinity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gamma
     (setq _gamma (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_of_sound
     (setq _speed_of_sound (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _salinity
     (setq _salinity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sonar_oculus::OculusFire :md5sum-) "0ab4b9458f99dac20a81bfd379cffcb5")
(setf (get sonar_oculus::OculusFire :datatype-) "sonar_oculus/OculusFire")
(setf (get sonar_oculus::OculusFire :definition-)
      "Header header

uint8    mode  
uint8    gamma
uint8    flags
float64  range
float64  gain
float64  speed_of_sound
float64  salinity
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

")



(provide :sonar_oculus/OculusFire "0ab4b9458f99dac20a81bfd379cffcb5")


