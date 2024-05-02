; Auto-generated. Do not edit!


(cl:in-package marine_acoustic_msgs-msg)


;//! \htmlinclude Dvl.msg.html

(cl:defclass <Dvl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity_mode
    :reader velocity_mode
    :initarg :velocity_mode
    :type cl:fixnum
    :initform 0)
   (dvl_type
    :reader dvl_type
    :initarg :dvl_type
    :type cl:fixnum
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_covar
    :reader velocity_covar
    :initarg :velocity_covar
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (course_gnd
    :reader course_gnd
    :initarg :course_gnd
    :type cl:float
    :initform 0.0)
   (speed_gnd
    :reader speed_gnd
    :initarg :speed_gnd
    :type cl:float
    :initform 0.0)
   (num_good_beams
    :reader num_good_beams
    :initarg :num_good_beams
    :type cl:fixnum
    :initform 0)
   (sound_speed
    :reader sound_speed
    :initarg :sound_speed
    :type cl:float
    :initform 0.0)
   (beam_ranges_valid
    :reader beam_ranges_valid
    :initarg :beam_ranges_valid
    :type cl:boolean
    :initform cl:nil)
   (beam_velocities_valid
    :reader beam_velocities_valid
    :initarg :beam_velocities_valid
    :type cl:boolean
    :initform cl:nil)
   (beam_unit_vec
    :reader beam_unit_vec
    :initarg :beam_unit_vec
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 4 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (range_covar
    :reader range_covar
    :initarg :range_covar
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (beam_quality
    :reader beam_quality
    :initarg :beam_quality
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (beam_velocity
    :reader beam_velocity
    :initarg :beam_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (beam_velocity_covar
    :reader beam_velocity_covar
    :initarg :beam_velocity_covar
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Dvl (<Dvl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dvl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dvl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marine_acoustic_msgs-msg:<Dvl> is deprecated: use marine_acoustic_msgs-msg:Dvl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:header-val is deprecated.  Use marine_acoustic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity_mode-val :lambda-list '(m))
(cl:defmethod velocity_mode-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:velocity_mode-val is deprecated.  Use marine_acoustic_msgs-msg:velocity_mode instead.")
  (velocity_mode m))

(cl:ensure-generic-function 'dvl_type-val :lambda-list '(m))
(cl:defmethod dvl_type-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:dvl_type-val is deprecated.  Use marine_acoustic_msgs-msg:dvl_type instead.")
  (dvl_type m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:velocity-val is deprecated.  Use marine_acoustic_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_covar-val :lambda-list '(m))
(cl:defmethod velocity_covar-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:velocity_covar-val is deprecated.  Use marine_acoustic_msgs-msg:velocity_covar instead.")
  (velocity_covar m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:altitude-val is deprecated.  Use marine_acoustic_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'course_gnd-val :lambda-list '(m))
(cl:defmethod course_gnd-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:course_gnd-val is deprecated.  Use marine_acoustic_msgs-msg:course_gnd instead.")
  (course_gnd m))

(cl:ensure-generic-function 'speed_gnd-val :lambda-list '(m))
(cl:defmethod speed_gnd-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:speed_gnd-val is deprecated.  Use marine_acoustic_msgs-msg:speed_gnd instead.")
  (speed_gnd m))

(cl:ensure-generic-function 'num_good_beams-val :lambda-list '(m))
(cl:defmethod num_good_beams-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:num_good_beams-val is deprecated.  Use marine_acoustic_msgs-msg:num_good_beams instead.")
  (num_good_beams m))

(cl:ensure-generic-function 'sound_speed-val :lambda-list '(m))
(cl:defmethod sound_speed-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:sound_speed-val is deprecated.  Use marine_acoustic_msgs-msg:sound_speed instead.")
  (sound_speed m))

(cl:ensure-generic-function 'beam_ranges_valid-val :lambda-list '(m))
(cl:defmethod beam_ranges_valid-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_ranges_valid-val is deprecated.  Use marine_acoustic_msgs-msg:beam_ranges_valid instead.")
  (beam_ranges_valid m))

(cl:ensure-generic-function 'beam_velocities_valid-val :lambda-list '(m))
(cl:defmethod beam_velocities_valid-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_velocities_valid-val is deprecated.  Use marine_acoustic_msgs-msg:beam_velocities_valid instead.")
  (beam_velocities_valid m))

(cl:ensure-generic-function 'beam_unit_vec-val :lambda-list '(m))
(cl:defmethod beam_unit_vec-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_unit_vec-val is deprecated.  Use marine_acoustic_msgs-msg:beam_unit_vec instead.")
  (beam_unit_vec m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:range-val is deprecated.  Use marine_acoustic_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'range_covar-val :lambda-list '(m))
(cl:defmethod range_covar-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:range_covar-val is deprecated.  Use marine_acoustic_msgs-msg:range_covar instead.")
  (range_covar m))

(cl:ensure-generic-function 'beam_quality-val :lambda-list '(m))
(cl:defmethod beam_quality-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_quality-val is deprecated.  Use marine_acoustic_msgs-msg:beam_quality instead.")
  (beam_quality m))

(cl:ensure-generic-function 'beam_velocity-val :lambda-list '(m))
(cl:defmethod beam_velocity-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_velocity-val is deprecated.  Use marine_acoustic_msgs-msg:beam_velocity instead.")
  (beam_velocity m))

(cl:ensure-generic-function 'beam_velocity_covar-val :lambda-list '(m))
(cl:defmethod beam_velocity_covar-val ((m <Dvl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marine_acoustic_msgs-msg:beam_velocity_covar-val is deprecated.  Use marine_acoustic_msgs-msg:beam_velocity_covar instead.")
  (beam_velocity_covar m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Dvl>)))
    "Constants for message type '<Dvl>"
  '((:DVL_MODE_BOTTOM . 1)
    (:DVL_MODE_WATER . 2)
    (:DVL_TYPE_PISTON . 0)
    (:DVL_TYPE_PHASED_ARRAY . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Dvl)))
    "Constants for message type 'Dvl"
  '((:DVL_MODE_BOTTOM . 1)
    (:DVL_MODE_WATER . 2)
    (:DVL_TYPE_PISTON . 0)
    (:DVL_TYPE_PHASED_ARRAY . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dvl>) ostream)
  "Serializes a message object of type '<Dvl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dvl_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'velocity_covar))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'course_gnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_gnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_good_beams)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sound_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'beam_ranges_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'beam_velocities_valid) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beam_unit_vec))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'range))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'range_covar))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'beam_quality))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'beam_velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'beam_velocity_covar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dvl>) istream)
  "Deserializes a message object of type '<Dvl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dvl_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (cl:setf (cl:slot-value msg 'velocity_covar) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'velocity_covar)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'course_gnd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_gnd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_good_beams)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sound_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'beam_ranges_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'beam_velocities_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'beam_unit_vec) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'beam_unit_vec)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'range) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'range_covar) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'range_covar)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'beam_quality) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'beam_quality)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'beam_velocity) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'beam_velocity)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'beam_velocity_covar) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'beam_velocity_covar)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dvl>)))
  "Returns string type for a message object of type '<Dvl>"
  "marine_acoustic_msgs/Dvl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dvl)))
  "Returns string type for a message object of type 'Dvl"
  "marine_acoustic_msgs/Dvl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dvl>)))
  "Returns md5sum for a message object of type '<Dvl>"
  "f09bbfba6f467f84523073fb27d38e3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dvl)))
  "Returns md5sum for a message object of type 'Dvl"
  "f09bbfba6f467f84523073fb27d38e3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dvl>)))
  "Returns full string definition for message of type '<Dvl>"
  (cl:format cl:nil "# Message for single ground-track ping from a DVL.~%#~%# This message is modeled after WHOI's Dvl.msg from the ds_sensor_msgs~%# repository, which was released under a BSD license.~%# Modifications were made by UW-APL.~%~%# ENUM: Velocity mode~%uint8 DVL_MODE_BOTTOM=1~%uint8 DVL_MODE_WATER=2~%~%# ENUM: DVL Type; used in sound velocity corrections~%~%# Standard (Janus) array with one piston transducer for each beam.~%# If you have 4-5 individual disks on your DVL, use this one.~%# Examples include Sonardyne Syrinx, Nortek DVLs, and RDI Workhorse~%uint8 DVL_TYPE_PISTON=0~%~%# Phased-array DVL.  If you have one giant disk with complicated stuff~%# on it, probably this one.~%# Examples include newer RDI DVLs such as pathfinder, pioneer, and tasman.~%uint8 DVL_TYPE_PHASED_ARRAY=1~%~%# The standard ROS header.~%# Timestamp is neither transmit nor receive time -- it is the time that~%# the velocity should be considered valid at.~%# Frame convention:~%# * z-axis in direction DVL is pointing~%# * x-axis aligned with vehicle forward~%std_msgs/Header header~%~%# Velocity mode (see above)~%uint8 velocity_mode~%~%# Type of DVL array employed (see above).  Necessary when~%# deciding how to apply sound velocity corrections~%uint8 dvl_type~%~%# Velocities [m/s]~%geometry_msgs/Vector3 velocity~%~%# row-major, xyz axes.  Set to \"-1\" if not known.~%float64[9] velocity_covar~%~%# Average altitude of all good beam returns.~%# For 30-deg sensor, altitude = (sqrt(3) / 2) * sum(range) / num_good_beams~%float64 altitude~%# Calculated from xy velocities: course_gnd = atan2(velocity.y, velocity.x)~%float64 course_gnd~%# Calculated from xy velocities: speed_gnd = sqrt(velocity.x^2 + velocity.y^2)~%float64 speed_gnd~%~%uint8 num_good_beams~%~%# Speed of sound (m/s) used by the DVL~%float32 sound_speed~%~%# Beam data~%# Some DVLs/DVL configurations only report the derived velocities.~%bool beam_ranges_valid~%bool beam_velocities_valid~%~%# Geometry of each of the 4 beams~%geometry_msgs/Vector3[4] beam_unit_vec~%~%# beam_unit_vec[i] * range[i] is the point where the beam hits the seafloor.~%# For a 30-deg sensor, multiply by sqrt(3)/2 to get altitude.~%float64[4] range~%float32[4] range_covar~%~%# Beam quality flag.~%# The meaning of this flag is DVL-specific (at least for now).~%float32[4] beam_quality~%~%# Raw velocities for each beam [m/s].~%# Will be beam 1,2,3,4 velocity in beam coordinates~%float32[4] beam_velocity~%# Covariance, as always, should be -1 if unknown~%float32[4] beam_velocity_covar~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dvl)))
  "Returns full string definition for message of type 'Dvl"
  (cl:format cl:nil "# Message for single ground-track ping from a DVL.~%#~%# This message is modeled after WHOI's Dvl.msg from the ds_sensor_msgs~%# repository, which was released under a BSD license.~%# Modifications were made by UW-APL.~%~%# ENUM: Velocity mode~%uint8 DVL_MODE_BOTTOM=1~%uint8 DVL_MODE_WATER=2~%~%# ENUM: DVL Type; used in sound velocity corrections~%~%# Standard (Janus) array with one piston transducer for each beam.~%# If you have 4-5 individual disks on your DVL, use this one.~%# Examples include Sonardyne Syrinx, Nortek DVLs, and RDI Workhorse~%uint8 DVL_TYPE_PISTON=0~%~%# Phased-array DVL.  If you have one giant disk with complicated stuff~%# on it, probably this one.~%# Examples include newer RDI DVLs such as pathfinder, pioneer, and tasman.~%uint8 DVL_TYPE_PHASED_ARRAY=1~%~%# The standard ROS header.~%# Timestamp is neither transmit nor receive time -- it is the time that~%# the velocity should be considered valid at.~%# Frame convention:~%# * z-axis in direction DVL is pointing~%# * x-axis aligned with vehicle forward~%std_msgs/Header header~%~%# Velocity mode (see above)~%uint8 velocity_mode~%~%# Type of DVL array employed (see above).  Necessary when~%# deciding how to apply sound velocity corrections~%uint8 dvl_type~%~%# Velocities [m/s]~%geometry_msgs/Vector3 velocity~%~%# row-major, xyz axes.  Set to \"-1\" if not known.~%float64[9] velocity_covar~%~%# Average altitude of all good beam returns.~%# For 30-deg sensor, altitude = (sqrt(3) / 2) * sum(range) / num_good_beams~%float64 altitude~%# Calculated from xy velocities: course_gnd = atan2(velocity.y, velocity.x)~%float64 course_gnd~%# Calculated from xy velocities: speed_gnd = sqrt(velocity.x^2 + velocity.y^2)~%float64 speed_gnd~%~%uint8 num_good_beams~%~%# Speed of sound (m/s) used by the DVL~%float32 sound_speed~%~%# Beam data~%# Some DVLs/DVL configurations only report the derived velocities.~%bool beam_ranges_valid~%bool beam_velocities_valid~%~%# Geometry of each of the 4 beams~%geometry_msgs/Vector3[4] beam_unit_vec~%~%# beam_unit_vec[i] * range[i] is the point where the beam hits the seafloor.~%# For a 30-deg sensor, multiply by sqrt(3)/2 to get altitude.~%float64[4] range~%float32[4] range_covar~%~%# Beam quality flag.~%# The meaning of this flag is DVL-specific (at least for now).~%float32[4] beam_quality~%~%# Raw velocities for each beam [m/s].~%# Will be beam 1,2,3,4 velocity in beam coordinates~%float32[4] beam_velocity~%# Covariance, as always, should be -1 if unknown~%float32[4] beam_velocity_covar~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dvl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity_covar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     8
     1
     4
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_unit_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'range_covar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_quality) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'beam_velocity_covar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dvl>))
  "Converts a ROS message object to a list"
  (cl:list 'Dvl
    (cl:cons ':header (header msg))
    (cl:cons ':velocity_mode (velocity_mode msg))
    (cl:cons ':dvl_type (dvl_type msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_covar (velocity_covar msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':course_gnd (course_gnd msg))
    (cl:cons ':speed_gnd (speed_gnd msg))
    (cl:cons ':num_good_beams (num_good_beams msg))
    (cl:cons ':sound_speed (sound_speed msg))
    (cl:cons ':beam_ranges_valid (beam_ranges_valid msg))
    (cl:cons ':beam_velocities_valid (beam_velocities_valid msg))
    (cl:cons ':beam_unit_vec (beam_unit_vec msg))
    (cl:cons ':range (range msg))
    (cl:cons ':range_covar (range_covar msg))
    (cl:cons ':beam_quality (beam_quality msg))
    (cl:cons ':beam_velocity (beam_velocity msg))
    (cl:cons ':beam_velocity_covar (beam_velocity_covar msg))
))
