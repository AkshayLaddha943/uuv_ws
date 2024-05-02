;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::SonarImageData)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'SonarImageData (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA")
  (make-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))

(in-package "ROS")
;;//! \htmlinclude SonarImageData.msg.html


(intern "*DTYPE_UINT8*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_UINT8* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_UINT8* 0)
(intern "*DTYPE_INT8*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_INT8* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_INT8* 1)
(intern "*DTYPE_UINT16*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_UINT16* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_UINT16* 2)
(intern "*DTYPE_INT16*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_INT16* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_INT16* 3)
(intern "*DTYPE_UINT32*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_UINT32* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_UINT32* 4)
(intern "*DTYPE_INT32*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_INT32* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_INT32* 5)
(intern "*DTYPE_UINT64*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_UINT64* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_UINT64* 6)
(intern "*DTYPE_INT64*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_INT64* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_INT64* 7)
(intern "*DTYPE_FLOAT32*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_FLOAT32* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_FLOAT32* 8)
(intern "*DTYPE_FLOAT64*" (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(shadow '*DTYPE_FLOAT64* (find-package "MARINE_ACOUSTIC_MSGS::SONARIMAGEDATA"))
(defconstant marine_acoustic_msgs::SonarImageData::*DTYPE_FLOAT64* 9)

(defun marine_acoustic_msgs::SonarImageData-to-symbol (const)
  (cond
        ((= const 0) 'marine_acoustic_msgs::SonarImageData::*DTYPE_UINT8*)
        ((= const 1) 'marine_acoustic_msgs::SonarImageData::*DTYPE_INT8*)
        ((= const 2) 'marine_acoustic_msgs::SonarImageData::*DTYPE_UINT16*)
        ((= const 3) 'marine_acoustic_msgs::SonarImageData::*DTYPE_INT16*)
        ((= const 4) 'marine_acoustic_msgs::SonarImageData::*DTYPE_UINT32*)
        ((= const 5) 'marine_acoustic_msgs::SonarImageData::*DTYPE_INT32*)
        ((= const 6) 'marine_acoustic_msgs::SonarImageData::*DTYPE_UINT64*)
        ((= const 7) 'marine_acoustic_msgs::SonarImageData::*DTYPE_INT64*)
        ((= const 8) 'marine_acoustic_msgs::SonarImageData::*DTYPE_FLOAT32*)
        ((= const 9) 'marine_acoustic_msgs::SonarImageData::*DTYPE_FLOAT64*)
        (t nil)))

(defclass marine_acoustic_msgs::SonarImageData
  :super ros::object
  :slots (_is_bigendian _dtype _beam_count _data ))

(defmethod marine_acoustic_msgs::SonarImageData
  (:init
   (&key
    ((:is_bigendian __is_bigendian) nil)
    ((:dtype __dtype) 0)
    ((:beam_count __beam_count) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _is_bigendian __is_bigendian)
   (setq _dtype (round __dtype))
   (setq _beam_count (round __beam_count))
   (setq _data __data)
   self)
  (:is_bigendian
   (&optional (__is_bigendian :null))
   (if (not (eq __is_bigendian :null)) (setq _is_bigendian __is_bigendian)) _is_bigendian)
  (:dtype
   (&optional __dtype)
   (if __dtype (setq _dtype __dtype)) _dtype)
  (:beam_count
   (&optional __beam_count)
   (if __beam_count (setq _beam_count __beam_count)) _beam_count)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _is_bigendian
    1
    ;; uint32 _dtype
    4
    ;; uint32 _beam_count
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_bigendian
       (if _is_bigendian (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _dtype
       (write-long _dtype s)
     ;; uint32 _beam_count
       (write-long _beam_count s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_bigendian
     (setq _is_bigendian (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _dtype
     (setq _dtype (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _beam_count
     (setq _beam_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::SonarImageData :md5sum-) "4daa9f67cfdb0ed22d5f2fe52c794da3")
(setf (get marine_acoustic_msgs::SonarImageData :datatype-) "marine_acoustic_msgs/SonarImageData")
(setf (get marine_acoustic_msgs::SonarImageData :definition-)
      "bool    is_bigendian

uint32  DTYPE_UINT8 = 0
uint32  DTYPE_INT8 = 1
uint32  DTYPE_UINT16 = 2
uint32  DTYPE_INT16 = 3
uint32  DTYPE_UINT32 = 4
uint32  DTYPE_INT32 = 5
uint32  DTYPE_UINT64 = 6
uint32  DTYPE_INT64 = 7
uint32  DTYPE_FLOAT32 = 8
uint32  DTYPE_FLOAT64 = 9

uint32  dtype

# the number of beams associated with the image
uint32 beam_count

# The actually pixel data in row-major (beam_index major) format
uint8[] data

")



(provide :marine_acoustic_msgs/SonarImageData "4daa9f67cfdb0ed22d5f2fe52c794da3")


