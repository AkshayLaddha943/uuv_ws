;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::PingInfo)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'PingInfo (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::PINGINFO")
  (make-package "MARINE_ACOUSTIC_MSGS::PINGINFO"))

(in-package "ROS")
;;//! \htmlinclude PingInfo.msg.html


(defclass marine_acoustic_msgs::PingInfo
  :super ros::object
  :slots (_frequency _sound_speed _tx_beamwidths _rx_beamwidths ))

(defmethod marine_acoustic_msgs::PingInfo
  (:init
   (&key
    ((:frequency __frequency) 0.0)
    ((:sound_speed __sound_speed) 0.0)
    ((:tx_beamwidths __tx_beamwidths) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rx_beamwidths __rx_beamwidths) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _frequency (float __frequency))
   (setq _sound_speed (float __sound_speed))
   (setq _tx_beamwidths __tx_beamwidths)
   (setq _rx_beamwidths __rx_beamwidths)
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:sound_speed
   (&optional __sound_speed)
   (if __sound_speed (setq _sound_speed __sound_speed)) _sound_speed)
  (:tx_beamwidths
   (&optional __tx_beamwidths)
   (if __tx_beamwidths (setq _tx_beamwidths __tx_beamwidths)) _tx_beamwidths)
  (:rx_beamwidths
   (&optional __rx_beamwidths)
   (if __rx_beamwidths (setq _rx_beamwidths __rx_beamwidths)) _rx_beamwidths)
  (:serialization-length
   ()
   (+
    ;; float32 _frequency
    4
    ;; float32 _sound_speed
    4
    ;; float32[] _tx_beamwidths
    (* 4    (length _tx_beamwidths)) 4
    ;; float32[] _rx_beamwidths
    (* 4    (length _rx_beamwidths)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sound_speed
       (sys::poke _sound_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _tx_beamwidths
     (write-long (length _tx_beamwidths) s)
     (dotimes (i (length _tx_beamwidths))
       (sys::poke (elt _tx_beamwidths i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rx_beamwidths
     (write-long (length _rx_beamwidths) s)
     (dotimes (i (length _rx_beamwidths))
       (sys::poke (elt _rx_beamwidths i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sound_speed
     (setq _sound_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _tx_beamwidths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tx_beamwidths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tx_beamwidths i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rx_beamwidths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rx_beamwidths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rx_beamwidths i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::PingInfo :md5sum-) "a0641c363452e8f5b02c57db588deecc")
(setf (get marine_acoustic_msgs::PingInfo :datatype-) "marine_acoustic_msgs/PingInfo")
(setf (get marine_acoustic_msgs::PingInfo :definition-)
      "# Center frequency of sonar in Hz
# Set to 0 if unavailable
float32 frequency

# Speed of sound (m/s) used to calculate ranges;
# Set to 0 if unavailable
float32 sound_speed

# Sonar reported -3db beamwidths
# May be empty if not reported
# reported in radians
float32[] tx_beamwidths
float32[] rx_beamwidths

")



(provide :marine_acoustic_msgs/PingInfo "a0641c363452e8f5b02c57db588deecc")


