;; Auto-generated. Do not edit!


(when (boundp 'kvh_gyro::gyro)
  (if (not (find-package "KVH_GYRO"))
    (make-package "KVH_GYRO"))
  (shadow 'gyro (find-package "KVH_GYRO")))
(unless (find-package "KVH_GYRO::GYRO")
  (make-package "KVH_GYRO::GYRO"))

(in-package "ROS")
;;//! \htmlinclude gyro.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kvh_gyro::gyro
  :super ros::object
  :slots (_header _status _delta ))

(defmethod kvh_gyro::gyro
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) nil)
    ((:delta __delta) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _delta __delta)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:delta
   (&optional __delta)
   (if __delta (setq _delta __delta)) _delta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _status
    1
    ;; float64[] _delta
    (* 8    (length _delta)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _delta
     (write-long (length _delta) s)
     (dotimes (i (length _delta))
       (sys::poke (elt _delta i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _delta
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delta (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _delta i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get kvh_gyro::gyro :md5sum-) "7bf4a7f82fe96d9124091847a68d6212")
(setf (get kvh_gyro::gyro :datatype-) "kvh_gyro/gyro")
(setf (get kvh_gyro::gyro :definition-)
      "Header header
bool status #was there an error with the gyro?
float64[] delta #an array for dx, dy, dz

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



(provide :kvh_gyro/gyro "7bf4a7f82fe96d9124091847a68d6212")


