;; Auto-generated. Do not edit!


(when (boundp 'bruce_msgs::ISAM2Update)
  (if (not (find-package "BRUCE_MSGS"))
    (make-package "BRUCE_MSGS"))
  (shadow 'ISAM2Update (find-package "BRUCE_MSGS")))
(unless (find-package "BRUCE_MSGS::ISAM2UPDATE")
  (make-package "BRUCE_MSGS::ISAM2UPDATE"))

(in-package "ROS")
;;//! \htmlinclude ISAM2Update.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bruce_msgs::ISAM2Update
  :super ros::object
  :slots (_header _key _isam2 _graph _values ))

(defmethod bruce_msgs::ISAM2Update
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:key __key) 0)
    ((:isam2 __isam2) (make-array 0 :initial-element 0 :element-type :char))
    ((:graph __graph) (make-array 0 :initial-element 0 :element-type :char))
    ((:values __values) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _key (round __key))
   (setq _isam2 __isam2)
   (setq _graph __graph)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:isam2
   (&optional __isam2)
   (if __isam2 (setq _isam2 __isam2)) _isam2)
  (:graph
   (&optional __graph)
   (if __graph (setq _graph __graph)) _graph)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _key
    4
    ;; uint8[] _isam2
    (* 1    (length _isam2)) 4
    ;; uint8[] _graph
    (* 1    (length _graph)) 4
    ;; uint8[] _values
    (* 1    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _key
       (write-long _key s)
     ;; uint8[] _isam2
     (write-long (length _isam2) s)
     (princ _isam2 s)
     ;; uint8[] _graph
     (write-long (length _graph) s)
     (princ _graph s)
     ;; uint8[] _values
     (write-long (length _values) s)
     (princ _values s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _isam2
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _isam2 (make-array n :element-type :char))
     (replace _isam2 buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _graph
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _graph (make-array n :element-type :char))
     (replace _graph buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _values
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _values (make-array n :element-type :char))
     (replace _values buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get bruce_msgs::ISAM2Update :md5sum-) "adea0c2c4633bd400b6e7cd433b18e42")
(setf (get bruce_msgs::ISAM2Update :datatype-) "bruce_msgs/ISAM2Update")
(setf (get bruce_msgs::ISAM2Update :definition-)
      "Header header
uint32 key
uint8[] isam2
uint8[] graph
uint8[] values

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



(provide :bruce_msgs/ISAM2Update "adea0c2c4633bd400b6e7cd433b18e42")


