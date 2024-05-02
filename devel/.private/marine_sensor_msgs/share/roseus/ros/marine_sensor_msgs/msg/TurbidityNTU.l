;; Auto-generated. Do not edit!


(when (boundp 'marine_sensor_msgs::TurbidityNTU)
  (if (not (find-package "MARINE_SENSOR_MSGS"))
    (make-package "MARINE_SENSOR_MSGS"))
  (shadow 'TurbidityNTU (find-package "MARINE_SENSOR_MSGS")))
(unless (find-package "MARINE_SENSOR_MSGS::TURBIDITYNTU")
  (make-package "MARINE_SENSOR_MSGS::TURBIDITYNTU"))

(in-package "ROS")
;;//! \htmlinclude TurbidityNTU.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marine_sensor_msgs::TurbidityNTU
  :super ros::object
  :slots (_header _ntu ))

(defmethod marine_sensor_msgs::TurbidityNTU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ntu __ntu) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ntu (float __ntu))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ntu
   (&optional __ntu)
   (if __ntu (setq _ntu __ntu)) _ntu)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _ntu
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _ntu
       (sys::poke _ntu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _ntu
     (setq _ntu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marine_sensor_msgs::TurbidityNTU :md5sum-) "b4b87124a72fd9382c32394b1c07b23b")
(setf (get marine_sensor_msgs::TurbidityNTU :datatype-) "marine_sensor_msgs/TurbidityNTU")
(setf (get marine_sensor_msgs::TurbidityNTU :definition-)
      "std_msgs/Header header
float32 ntu

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



(provide :marine_sensor_msgs/TurbidityNTU "b4b87124a72fd9382c32394b1c07b23b")


