;; Auto-generated. Do not edit!


(when (boundp 'sonar_oculus::OculusPing)
  (if (not (find-package "SONAR_OCULUS"))
    (make-package "SONAR_OCULUS"))
  (shadow 'OculusPing (find-package "SONAR_OCULUS")))
(unless (find-package "SONAR_OCULUS::OCULUSPING")
  (make-package "SONAR_OCULUS::OCULUSPING"))

(in-package "ROS")
;;//! \htmlinclude OculusPing.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sonar_oculus::OculusPing
  :super ros::object
  :slots (_header _fire_msg _ping_id _part_number _start_time _bearings _range_resolution _num_ranges _num_beams _ping ))

(defmethod sonar_oculus::OculusPing
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fire_msg __fire_msg) (instance sonar_oculus::OculusFire :init))
    ((:ping_id __ping_id) 0)
    ((:part_number __part_number) 0)
    ((:start_time __start_time) 0)
    ((:bearings __bearings) (make-array 0 :initial-element 0 :element-type :integer))
    ((:range_resolution __range_resolution) 0.0)
    ((:num_ranges __num_ranges) 0)
    ((:num_beams __num_beams) 0)
    ((:ping __ping) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fire_msg __fire_msg)
   (setq _ping_id (round __ping_id))
   (setq _part_number (round __part_number))
   (setq _start_time (round __start_time))
   (setq _bearings __bearings)
   (setq _range_resolution (float __range_resolution))
   (setq _num_ranges (round __num_ranges))
   (setq _num_beams (round __num_beams))
   (setq _ping __ping)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fire_msg
   (&rest __fire_msg)
   (if (keywordp (car __fire_msg))
       (send* _fire_msg __fire_msg)
     (progn
       (if __fire_msg (setq _fire_msg (car __fire_msg)))
       _fire_msg)))
  (:ping_id
   (&optional __ping_id)
   (if __ping_id (setq _ping_id __ping_id)) _ping_id)
  (:part_number
   (&optional __part_number)
   (if __part_number (setq _part_number __part_number)) _part_number)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:bearings
   (&optional __bearings)
   (if __bearings (setq _bearings __bearings)) _bearings)
  (:range_resolution
   (&optional __range_resolution)
   (if __range_resolution (setq _range_resolution __range_resolution)) _range_resolution)
  (:num_ranges
   (&optional __num_ranges)
   (if __num_ranges (setq _num_ranges __num_ranges)) _num_ranges)
  (:num_beams
   (&optional __num_beams)
   (if __num_beams (setq _num_beams __num_beams)) _num_beams)
  (:ping
   (&rest __ping)
   (if (keywordp (car __ping))
       (send* _ping __ping)
     (progn
       (if __ping (setq _ping (car __ping)))
       _ping)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sonar_oculus/OculusFire _fire_msg
    (send _fire_msg :serialization-length)
    ;; uint32 _ping_id
    4
    ;; uint16 _part_number
    2
    ;; uint32 _start_time
    4
    ;; int16[] _bearings
    (* 2    (length _bearings)) 4
    ;; float64 _range_resolution
    8
    ;; uint32 _num_ranges
    4
    ;; uint32 _num_beams
    4
    ;; sensor_msgs/CompressedImage _ping
    (send _ping :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sonar_oculus/OculusFire _fire_msg
       (send _fire_msg :serialize s)
     ;; uint32 _ping_id
       (write-long _ping_id s)
     ;; uint16 _part_number
       (write-word _part_number s)
     ;; uint32 _start_time
       (write-long _start_time s)
     ;; int16[] _bearings
     (write-long (length _bearings) s)
     (dotimes (i (length _bearings))
       (write-word (elt _bearings i) s)
       )
     ;; float64 _range_resolution
       (sys::poke _range_resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _num_ranges
       (write-long _num_ranges s)
     ;; uint32 _num_beams
       (write-long _num_beams s)
     ;; sensor_msgs/CompressedImage _ping
       (send _ping :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sonar_oculus/OculusFire _fire_msg
     (send _fire_msg :deserialize buf ptr-) (incf ptr- (send _fire_msg :serialization-length))
   ;; uint32 _ping_id
     (setq _ping_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _part_number
     (setq _part_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _start_time
     (setq _start_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16[] _bearings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bearings (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _bearings i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64 _range_resolution
     (setq _range_resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _num_ranges
     (setq _num_ranges (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_beams
     (setq _num_beams (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/CompressedImage _ping
     (send _ping :deserialize buf ptr-) (incf ptr- (send _ping :serialization-length))
   ;;
   self)
  )

(setf (get sonar_oculus::OculusPing :md5sum-) "9f6ad8a7bb36e92c4f0225b11da7ca2e")
(setf (get sonar_oculus::OculusPing :datatype-) "sonar_oculus/OculusPing")
(setf (get sonar_oculus::OculusPing :definition-)
      "std_msgs/Header header

OculusFire fire_msg

uint32     ping_id
uint16     part_number
uint32     start_time

int16[]    bearings         # bearings of beams (bearing * PI / 18000)
float64    range_resolution # length of a single range bin
uint32     num_ranges       # number of range lines in the image
uint32     num_beams        # number of bearings in the image     

sensor_msgs/CompressedImage ping

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
MSG: sonar_oculus/OculusFire
Header header

uint8    mode  
uint8    gamma
uint8    flags
float64  range
float64  gain
float64  speed_of_sound
float64  salinity
================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

")



(provide :sonar_oculus/OculusPing "9f6ad8a7bb36e92c4f0225b11da7ca2e")


