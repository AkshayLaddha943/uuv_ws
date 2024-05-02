;; Auto-generated. Do not edit!


(when (boundp 'marine_acoustic_msgs::Dvl)
  (if (not (find-package "MARINE_ACOUSTIC_MSGS"))
    (make-package "MARINE_ACOUSTIC_MSGS"))
  (shadow 'Dvl (find-package "MARINE_ACOUSTIC_MSGS")))
(unless (find-package "MARINE_ACOUSTIC_MSGS::DVL")
  (make-package "MARINE_ACOUSTIC_MSGS::DVL"))

(in-package "ROS")
;;//! \htmlinclude Dvl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DVL_MODE_BOTTOM*" (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(shadow '*DVL_MODE_BOTTOM* (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(defconstant marine_acoustic_msgs::Dvl::*DVL_MODE_BOTTOM* 1)
(intern "*DVL_MODE_WATER*" (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(shadow '*DVL_MODE_WATER* (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(defconstant marine_acoustic_msgs::Dvl::*DVL_MODE_WATER* 2)
(intern "*DVL_TYPE_PISTON*" (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(shadow '*DVL_TYPE_PISTON* (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(defconstant marine_acoustic_msgs::Dvl::*DVL_TYPE_PISTON* 0)
(intern "*DVL_TYPE_PHASED_ARRAY*" (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(shadow '*DVL_TYPE_PHASED_ARRAY* (find-package "MARINE_ACOUSTIC_MSGS::DVL"))
(defconstant marine_acoustic_msgs::Dvl::*DVL_TYPE_PHASED_ARRAY* 1)

(defun marine_acoustic_msgs::Dvl-to-symbol (const)
  (cond
        ((= const 1) 'marine_acoustic_msgs::Dvl::*DVL_MODE_BOTTOM*)
        ((= const 2) 'marine_acoustic_msgs::Dvl::*DVL_MODE_WATER*)
        ((= const 0) 'marine_acoustic_msgs::Dvl::*DVL_TYPE_PISTON*)
        ((= const 1) 'marine_acoustic_msgs::Dvl::*DVL_TYPE_PHASED_ARRAY*)
        (t nil)))

(defclass marine_acoustic_msgs::Dvl
  :super ros::object
  :slots (_header _velocity_mode _dvl_type _velocity _velocity_covar _altitude _course_gnd _speed_gnd _num_good_beams _sound_speed _beam_ranges_valid _beam_velocities_valid _beam_unit_vec _range _range_covar _beam_quality _beam_velocity _beam_velocity_covar ))

(defmethod marine_acoustic_msgs::Dvl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity_mode __velocity_mode) 0)
    ((:dvl_type __dvl_type) 0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:velocity_covar __velocity_covar) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:altitude __altitude) 0.0)
    ((:course_gnd __course_gnd) 0.0)
    ((:speed_gnd __speed_gnd) 0.0)
    ((:num_good_beams __num_good_beams) 0)
    ((:sound_speed __sound_speed) 0.0)
    ((:beam_ranges_valid __beam_ranges_valid) nil)
    ((:beam_velocities_valid __beam_velocities_valid) nil)
    ((:beam_unit_vec __beam_unit_vec) (let (r) (dotimes (i 4) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:range __range) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:range_covar __range_covar) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:beam_quality __beam_quality) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:beam_velocity __beam_velocity) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:beam_velocity_covar __beam_velocity_covar) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity_mode (round __velocity_mode))
   (setq _dvl_type (round __dvl_type))
   (setq _velocity __velocity)
   (setq _velocity_covar __velocity_covar)
   (setq _altitude (float __altitude))
   (setq _course_gnd (float __course_gnd))
   (setq _speed_gnd (float __speed_gnd))
   (setq _num_good_beams (round __num_good_beams))
   (setq _sound_speed (float __sound_speed))
   (setq _beam_ranges_valid __beam_ranges_valid)
   (setq _beam_velocities_valid __beam_velocities_valid)
   (setq _beam_unit_vec __beam_unit_vec)
   (setq _range __range)
   (setq _range_covar __range_covar)
   (setq _beam_quality __beam_quality)
   (setq _beam_velocity __beam_velocity)
   (setq _beam_velocity_covar __beam_velocity_covar)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity_mode
   (&optional __velocity_mode)
   (if __velocity_mode (setq _velocity_mode __velocity_mode)) _velocity_mode)
  (:dvl_type
   (&optional __dvl_type)
   (if __dvl_type (setq _dvl_type __dvl_type)) _dvl_type)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_covar
   (&optional __velocity_covar)
   (if __velocity_covar (setq _velocity_covar __velocity_covar)) _velocity_covar)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:course_gnd
   (&optional __course_gnd)
   (if __course_gnd (setq _course_gnd __course_gnd)) _course_gnd)
  (:speed_gnd
   (&optional __speed_gnd)
   (if __speed_gnd (setq _speed_gnd __speed_gnd)) _speed_gnd)
  (:num_good_beams
   (&optional __num_good_beams)
   (if __num_good_beams (setq _num_good_beams __num_good_beams)) _num_good_beams)
  (:sound_speed
   (&optional __sound_speed)
   (if __sound_speed (setq _sound_speed __sound_speed)) _sound_speed)
  (:beam_ranges_valid
   (&optional (__beam_ranges_valid :null))
   (if (not (eq __beam_ranges_valid :null)) (setq _beam_ranges_valid __beam_ranges_valid)) _beam_ranges_valid)
  (:beam_velocities_valid
   (&optional (__beam_velocities_valid :null))
   (if (not (eq __beam_velocities_valid :null)) (setq _beam_velocities_valid __beam_velocities_valid)) _beam_velocities_valid)
  (:beam_unit_vec
   (&rest __beam_unit_vec)
   (if (keywordp (car __beam_unit_vec))
       (send* _beam_unit_vec __beam_unit_vec)
     (progn
       (if __beam_unit_vec (setq _beam_unit_vec (car __beam_unit_vec)))
       _beam_unit_vec)))
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:range_covar
   (&optional __range_covar)
   (if __range_covar (setq _range_covar __range_covar)) _range_covar)
  (:beam_quality
   (&optional __beam_quality)
   (if __beam_quality (setq _beam_quality __beam_quality)) _beam_quality)
  (:beam_velocity
   (&optional __beam_velocity)
   (if __beam_velocity (setq _beam_velocity __beam_velocity)) _beam_velocity)
  (:beam_velocity_covar
   (&optional __beam_velocity_covar)
   (if __beam_velocity_covar (setq _beam_velocity_covar __beam_velocity_covar)) _beam_velocity_covar)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _velocity_mode
    1
    ;; uint8 _dvl_type
    1
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64[9] _velocity_covar
    (* 8    9)
    ;; float64 _altitude
    8
    ;; float64 _course_gnd
    8
    ;; float64 _speed_gnd
    8
    ;; uint8 _num_good_beams
    1
    ;; float32 _sound_speed
    4
    ;; bool _beam_ranges_valid
    1
    ;; bool _beam_velocities_valid
    1
    ;; geometry_msgs/Vector3[4] _beam_unit_vec
    (apply #'+ (send-all _beam_unit_vec :serialization-length))
    ;; float64[4] _range
    (* 8    4)
    ;; float32[4] _range_covar
    (* 4    4)
    ;; float32[4] _beam_quality
    (* 4    4)
    ;; float32[4] _beam_velocity
    (* 4    4)
    ;; float32[4] _beam_velocity_covar
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _velocity_mode
       (write-byte _velocity_mode s)
     ;; uint8 _dvl_type
       (write-byte _dvl_type s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64[9] _velocity_covar
     (dotimes (i 9)
       (sys::poke (elt _velocity_covar i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _course_gnd
       (sys::poke _course_gnd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_gnd
       (sys::poke _speed_gnd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _num_good_beams
       (write-byte _num_good_beams s)
     ;; float32 _sound_speed
       (sys::poke _sound_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _beam_ranges_valid
       (if _beam_ranges_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _beam_velocities_valid
       (if _beam_velocities_valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3[4] _beam_unit_vec
     (dolist (elem _beam_unit_vec)
       (send elem :serialize s)
       )
     ;; float64[4] _range
     (dotimes (i 4)
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[4] _range_covar
     (dotimes (i 4)
       (sys::poke (elt _range_covar i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _beam_quality
     (dotimes (i 4)
       (sys::poke (elt _beam_quality i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _beam_velocity
     (dotimes (i 4)
       (sys::poke (elt _beam_velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _beam_velocity_covar
     (dotimes (i 4)
       (sys::poke (elt _beam_velocity_covar i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _velocity_mode
     (setq _velocity_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dvl_type
     (setq _dvl_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64[9] _velocity_covar
   (dotimes (i (length _velocity_covar))
     (setf (elt _velocity_covar i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _course_gnd
     (setq _course_gnd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_gnd
     (setq _speed_gnd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _num_good_beams
     (setq _num_good_beams (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _sound_speed
     (setq _sound_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _beam_ranges_valid
     (setq _beam_ranges_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _beam_velocities_valid
     (setq _beam_velocities_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3[4] _beam_unit_vec
   (dotimes (i 4)
     (send (elt _beam_unit_vec i) :deserialize buf ptr-) (incf ptr- (send (elt _beam_unit_vec i) :serialization-length))
     )
   ;; float64[4] _range
   (dotimes (i (length _range))
     (setf (elt _range i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float32[4] _range_covar
   (dotimes (i (length _range_covar))
     (setf (elt _range_covar i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _beam_quality
   (dotimes (i (length _beam_quality))
     (setf (elt _beam_quality i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _beam_velocity
   (dotimes (i (length _beam_velocity))
     (setf (elt _beam_velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _beam_velocity_covar
   (dotimes (i (length _beam_velocity_covar))
     (setf (elt _beam_velocity_covar i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get marine_acoustic_msgs::Dvl :md5sum-) "f09bbfba6f467f84523073fb27d38e3e")
(setf (get marine_acoustic_msgs::Dvl :datatype-) "marine_acoustic_msgs/Dvl")
(setf (get marine_acoustic_msgs::Dvl :definition-)
      "# Message for single ground-track ping from a DVL.
#
# This message is modeled after WHOI's Dvl.msg from the ds_sensor_msgs
# repository, which was released under a BSD license.
# Modifications were made by UW-APL.

# ENUM: Velocity mode
uint8 DVL_MODE_BOTTOM=1
uint8 DVL_MODE_WATER=2

# ENUM: DVL Type; used in sound velocity corrections

# Standard (Janus) array with one piston transducer for each beam.
# If you have 4-5 individual disks on your DVL, use this one.
# Examples include Sonardyne Syrinx, Nortek DVLs, and RDI Workhorse
uint8 DVL_TYPE_PISTON=0

# Phased-array DVL.  If you have one giant disk with complicated stuff
# on it, probably this one.
# Examples include newer RDI DVLs such as pathfinder, pioneer, and tasman.
uint8 DVL_TYPE_PHASED_ARRAY=1

# The standard ROS header.
# Timestamp is neither transmit nor receive time -- it is the time that
# the velocity should be considered valid at.
# Frame convention:
# * z-axis in direction DVL is pointing
# * x-axis aligned with vehicle forward
std_msgs/Header header

# Velocity mode (see above)
uint8 velocity_mode

# Type of DVL array employed (see above).  Necessary when
# deciding how to apply sound velocity corrections
uint8 dvl_type

# Velocities [m/s]
geometry_msgs/Vector3 velocity

# row-major, xyz axes.  Set to \"-1\" if not known.
float64[9] velocity_covar

# Average altitude of all good beam returns.
# For 30-deg sensor, altitude = (sqrt(3) / 2) * sum(range) / num_good_beams
float64 altitude
# Calculated from xy velocities: course_gnd = atan2(velocity.y, velocity.x)
float64 course_gnd
# Calculated from xy velocities: speed_gnd = sqrt(velocity.x^2 + velocity.y^2)
float64 speed_gnd

uint8 num_good_beams

# Speed of sound (m/s) used by the DVL
float32 sound_speed

# Beam data
# Some DVLs/DVL configurations only report the derived velocities.
bool beam_ranges_valid
bool beam_velocities_valid

# Geometry of each of the 4 beams
geometry_msgs/Vector3[4] beam_unit_vec

# beam_unit_vec[i] * range[i] is the point where the beam hits the seafloor.
# For a 30-deg sensor, multiply by sqrt(3)/2 to get altitude.
float64[4] range
float32[4] range_covar

# Beam quality flag.
# The meaning of this flag is DVL-specific (at least for now).
float32[4] beam_quality

# Raw velocities for each beam [m/s].
# Will be beam 1,2,3,4 velocity in beam coordinates
float32[4] beam_velocity
# Covariance, as always, should be -1 if unknown
float32[4] beam_velocity_covar

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :marine_acoustic_msgs/Dvl "f09bbfba6f467f84523073fb27d38e3e")


