;; Auto-generated. Do not edit!


(when (boundp 'bar30_depth::Depth)
  (if (not (find-package "BAR30_DEPTH"))
    (make-package "BAR30_DEPTH"))
  (shadow 'Depth (find-package "BAR30_DEPTH")))
(unless (find-package "BAR30_DEPTH::DEPTH")
  (make-package "BAR30_DEPTH::DEPTH"))

(in-package "ROS")
;;//! \htmlinclude Depth.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bar30_depth::Depth
  :super ros::object
  :slots (_header _time _pressure_abs _pressure_diff _temperature _depth ))

(defmethod bar30_depth::Depth
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:pressure_abs __pressure_abs) 0.0)
    ((:pressure_diff __pressure_diff) 0.0)
    ((:temperature __temperature) 0.0)
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _pressure_abs (float __pressure_abs))
   (setq _pressure_diff (float __pressure_diff))
   (setq _temperature (float __temperature))
   (setq _depth (float __depth))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:pressure_abs
   (&optional __pressure_abs)
   (if __pressure_abs (setq _pressure_abs __pressure_abs)) _pressure_abs)
  (:pressure_diff
   (&optional __pressure_diff)
   (if __pressure_diff (setq _pressure_diff __pressure_diff)) _pressure_diff)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _time
    4
    ;; float32 _pressure_abs
    4
    ;; float32 _pressure_diff
    4
    ;; float32 _temperature
    4
    ;; float32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure_abs
       (sys::poke _pressure_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure_diff
       (sys::poke _pressure_diff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure_abs
     (setq _pressure_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure_diff
     (setq _pressure_diff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bar30_depth::Depth :md5sum-) "dd07528378d12aab22e9e6b826443a3a")
(setf (get bar30_depth::Depth :datatype-) "bar30_depth/Depth")
(setf (get bar30_depth::Depth :definition-)
      "Header header

float32 time
float32 pressure_abs
float32 pressure_diff
float32 temperature
float32 depth
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



(provide :bar30_depth/Depth "dd07528378d12aab22e9e6b826443a3a")


