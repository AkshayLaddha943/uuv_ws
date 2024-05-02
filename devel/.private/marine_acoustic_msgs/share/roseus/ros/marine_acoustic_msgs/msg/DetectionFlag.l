;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::DetectionFlag)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'DetectionFlag (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG")
  (make-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))

(in-package "ROS")
;;//! \htmlinclude DetectionFlag.msg.html


(intern "*DETECT_OK*" (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(shadow '*DETECT_OK* (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(defconstant marine_acoustic_msgs::DetectionFlag::*DETECT_OK* 0)
(intern "*DETECT_BAD_SONAR*" (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(shadow '*DETECT_BAD_SONAR* (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(defconstant marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_SONAR* 1)
(intern "*DETECT_BAD_FILTER*" (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(shadow '*DETECT_BAD_FILTER* (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(defconstant marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_FILTER* 2)
(intern "*DETECT_BAD_USER*" (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(shadow '*DETECT_BAD_USER* (find-package "MARINE_ACOUSTIC_MSGS::DETECTIONFLAG"))
(defconstant marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_USER* 4)

(defun marine_acoustic_msgs::DetectionFlag-to-symbol (const)
  (cond
        ((= const 0) 'marine_acoustic_msgs::DetectionFlag::*DETECT_OK*)
        ((= const 1) 'marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_SONAR*)
        ((= const 2) 'marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_FILTER*)
        ((= const 4) 'marine_acoustic_msgs::DetectionFlag::*DETECT_BAD_USER*)
        (t nil)))

(defclass marine_acoustic_msgs::DetectionFlag
  :super ros::object
  :slots (_flag ))

(defmethod marine_acoustic_msgs::DetectionFlag
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::DetectionFlag :md5sum-) "2c45bd69e61e55c2962ccd8337e7d00d")
(setf (get marine_acoustic_msgs::DetectionFlag :datatype-) "marine_acoustic_msgs/DetectionFlag")
(setf (get marine_acoustic_msgs::DetectionFlag :definition-)
      "# Beam is OK
uint8 DETECT_OK = 0
# Beam is flagged as bad by the sonar.  Think hard before second-guessing
uint8 DETECT_BAD_SONAR = 1
# Beam is flagged as bad by some automated filter applied during processing.
uint8 DETECT_BAD_FILTER = 2
# Beam is flagged as bad by the user. This is probably not happening in
# realtime, but is included here so the same message can be used throughout
# a post-processing pipeline.
uint8 DETECT_BAD_USER = 4

# These arrays should have the same dimensions, and should match
# the number of beams for this sonar.
#
# Some fields are optional.  Those should have 0 length.

# Flag values for every beam
uint8 flag

")



(provide :marine_acoustic_msgs/DetectionFlag "2c45bd69e61e55c2962ccd8337e7d00d")


