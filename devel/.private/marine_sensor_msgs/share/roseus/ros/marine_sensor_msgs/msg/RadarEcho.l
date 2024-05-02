;; Auto-generated. Do not edit!


(when (boundp 'marine_sensor_msgs::RadarEcho)
  (if (not (find-package "MARINE_SENSOR_MSGS"))
    (make-package "MARINE_SENSOR_MSGS"))
  (shadow 'RadarEcho (find-package "MARINE_SENSOR_MSGS")))
(unless (find-package "MARINE_SENSOR_MSGS::RADARECHO")
  (make-package "MARINE_SENSOR_MSGS::RADARECHO"))

(in-package "ROS")
;;//! \htmlinclude RadarEcho.msg.html


(defclass marine_sensor_msgs::RadarEcho
  :super ros::object
  :slots (_echoes ))

(defmethod marine_sensor_msgs::RadarEcho
  (:init
   (&key
    ((:echoes __echoes) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _echoes __echoes)
   self)
  (:echoes
   (&optional __echoes)
   (if __echoes (setq _echoes __echoes)) _echoes)
  (:serialization-length
   ()
   (+
    ;; float32[] _echoes
    (* 4    (length _echoes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _echoes
     (write-long (length _echoes) s)
     (dotimes (i (length _echoes))
       (sys::poke (elt _echoes i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _echoes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _echoes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _echoes i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marine_sensor_msgs::RadarEcho :md5sum-) "8bc5ae449b200fba4d552b4225586696")
(setf (get marine_sensor_msgs::RadarEcho :datatype-) "marine_sensor_msgs/RadarEcho")
(setf (get marine_sensor_msgs::RadarEcho :definition-)
      "# This message is a submessage of RadarSector and is not intended
# to be used separately. It represents intensities from a
# single ray.

# Series of intensities from closest to farthest
# along a given angle increment. [device-specific units]
float32[] echoes

")



(provide :marine_sensor_msgs/RadarEcho "8bc5ae449b200fba4d552b4225586696")


