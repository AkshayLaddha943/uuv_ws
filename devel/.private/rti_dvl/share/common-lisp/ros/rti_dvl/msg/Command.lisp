; Auto-generated. Do not edit!


(cl:in-package rti_dvl-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((CEPO
    :reader CEPO
    :initarg :CEPO
    :type cl:string
    :initform "")
   (CEAUTOSTART
    :reader CEAUTOSTART
    :initarg :CEAUTOSTART
    :type cl:string
    :initform "")
   (CEI
    :reader CEI
    :initarg :CEI
    :type cl:string
    :initform "")
   (C485OUT
    :reader C485OUT
    :initarg :C485OUT
    :type cl:string
    :initform "")
   (C232OUT
    :reader C232OUT
    :initarg :C232OUT
    :type cl:string
    :initform "")
   (CBTON
    :reader CBTON
    :initarg :CBTON
    :type cl:string
    :initform "")
   (CBTBB
    :reader CBTBB
    :initarg :CBTBB
    :type cl:string
    :initform "")
   (CBTMX
    :reader CBTMX
    :initarg :CBTMX
    :type cl:string
    :initform "")
   (CBTBL
    :reader CBTBL
    :initarg :CBTBL
    :type cl:string
    :initform "")
   (CBTT
    :reader CBTT
    :initarg :CBTT
    :type cl:string
    :initform "")
   (CBTTBP
    :reader CBTTBP
    :initarg :CBTTBP
    :type cl:string
    :initform "")
   (CBTST
    :reader CBTST
    :initarg :CBTST
    :type cl:string
    :initform "")
   (CBTFILT
    :reader CBTFILT
    :initarg :CBTFILT
    :type cl:string
    :initform "")
   (CWSSC
    :reader CWSSC
    :initarg :CWSSC
    :type cl:string
    :initform "")
   (CWS
    :reader CWS
    :initarg :CWS
    :type cl:string
    :initform "")
   (CWT
    :reader CWT
    :initarg :CWT
    :type cl:string
    :initform "")
   (CTD
    :reader CTD
    :initarg :CTD
    :type cl:string
    :initform "")
   (CWSS
    :reader CWSS
    :initarg :CWSS
    :type cl:string
    :initform "")
   (CHO
    :reader CHO
    :initarg :CHO
    :type cl:string
    :initform "")
   (CHS
    :reader CHS
    :initarg :CHS
    :type cl:string
    :initform "")
   (CTS
    :reader CTS
    :initarg :CTS
    :type cl:string
    :initform "")
   (CVSF
    :reader CVSF
    :initarg :CVSF
    :type cl:string
    :initform ""))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rti_dvl-msg:<Command> is deprecated: use rti_dvl-msg:Command instead.")))

(cl:ensure-generic-function 'CEPO-val :lambda-list '(m))
(cl:defmethod CEPO-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CEPO-val is deprecated.  Use rti_dvl-msg:CEPO instead.")
  (CEPO m))

(cl:ensure-generic-function 'CEAUTOSTART-val :lambda-list '(m))
(cl:defmethod CEAUTOSTART-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CEAUTOSTART-val is deprecated.  Use rti_dvl-msg:CEAUTOSTART instead.")
  (CEAUTOSTART m))

(cl:ensure-generic-function 'CEI-val :lambda-list '(m))
(cl:defmethod CEI-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CEI-val is deprecated.  Use rti_dvl-msg:CEI instead.")
  (CEI m))

(cl:ensure-generic-function 'C485OUT-val :lambda-list '(m))
(cl:defmethod C485OUT-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:C485OUT-val is deprecated.  Use rti_dvl-msg:C485OUT instead.")
  (C485OUT m))

(cl:ensure-generic-function 'C232OUT-val :lambda-list '(m))
(cl:defmethod C232OUT-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:C232OUT-val is deprecated.  Use rti_dvl-msg:C232OUT instead.")
  (C232OUT m))

(cl:ensure-generic-function 'CBTON-val :lambda-list '(m))
(cl:defmethod CBTON-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTON-val is deprecated.  Use rti_dvl-msg:CBTON instead.")
  (CBTON m))

(cl:ensure-generic-function 'CBTBB-val :lambda-list '(m))
(cl:defmethod CBTBB-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTBB-val is deprecated.  Use rti_dvl-msg:CBTBB instead.")
  (CBTBB m))

(cl:ensure-generic-function 'CBTMX-val :lambda-list '(m))
(cl:defmethod CBTMX-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTMX-val is deprecated.  Use rti_dvl-msg:CBTMX instead.")
  (CBTMX m))

(cl:ensure-generic-function 'CBTBL-val :lambda-list '(m))
(cl:defmethod CBTBL-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTBL-val is deprecated.  Use rti_dvl-msg:CBTBL instead.")
  (CBTBL m))

(cl:ensure-generic-function 'CBTT-val :lambda-list '(m))
(cl:defmethod CBTT-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTT-val is deprecated.  Use rti_dvl-msg:CBTT instead.")
  (CBTT m))

(cl:ensure-generic-function 'CBTTBP-val :lambda-list '(m))
(cl:defmethod CBTTBP-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTTBP-val is deprecated.  Use rti_dvl-msg:CBTTBP instead.")
  (CBTTBP m))

(cl:ensure-generic-function 'CBTST-val :lambda-list '(m))
(cl:defmethod CBTST-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTST-val is deprecated.  Use rti_dvl-msg:CBTST instead.")
  (CBTST m))

(cl:ensure-generic-function 'CBTFILT-val :lambda-list '(m))
(cl:defmethod CBTFILT-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CBTFILT-val is deprecated.  Use rti_dvl-msg:CBTFILT instead.")
  (CBTFILT m))

(cl:ensure-generic-function 'CWSSC-val :lambda-list '(m))
(cl:defmethod CWSSC-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CWSSC-val is deprecated.  Use rti_dvl-msg:CWSSC instead.")
  (CWSSC m))

(cl:ensure-generic-function 'CWS-val :lambda-list '(m))
(cl:defmethod CWS-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CWS-val is deprecated.  Use rti_dvl-msg:CWS instead.")
  (CWS m))

(cl:ensure-generic-function 'CWT-val :lambda-list '(m))
(cl:defmethod CWT-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CWT-val is deprecated.  Use rti_dvl-msg:CWT instead.")
  (CWT m))

(cl:ensure-generic-function 'CTD-val :lambda-list '(m))
(cl:defmethod CTD-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CTD-val is deprecated.  Use rti_dvl-msg:CTD instead.")
  (CTD m))

(cl:ensure-generic-function 'CWSS-val :lambda-list '(m))
(cl:defmethod CWSS-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CWSS-val is deprecated.  Use rti_dvl-msg:CWSS instead.")
  (CWSS m))

(cl:ensure-generic-function 'CHO-val :lambda-list '(m))
(cl:defmethod CHO-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CHO-val is deprecated.  Use rti_dvl-msg:CHO instead.")
  (CHO m))

(cl:ensure-generic-function 'CHS-val :lambda-list '(m))
(cl:defmethod CHS-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CHS-val is deprecated.  Use rti_dvl-msg:CHS instead.")
  (CHS m))

(cl:ensure-generic-function 'CTS-val :lambda-list '(m))
(cl:defmethod CTS-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CTS-val is deprecated.  Use rti_dvl-msg:CTS instead.")
  (CTS m))

(cl:ensure-generic-function 'CVSF-val :lambda-list '(m))
(cl:defmethod CVSF-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rti_dvl-msg:CVSF-val is deprecated.  Use rti_dvl-msg:CVSF instead.")
  (CVSF m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CEPO))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CEPO))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CEAUTOSTART))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CEAUTOSTART))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CEI))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CEI))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'C485OUT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'C485OUT))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'C232OUT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'C232OUT))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTON))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTON))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTBB))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTBB))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTMX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTMX))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTBL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTBL))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTT))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTTBP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTTBP))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTST))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTST))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CBTFILT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CBTFILT))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CWSSC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CWSSC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CWS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CWS))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CWT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CWT))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CTD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CTD))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CWSS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CWSS))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CHO))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CHO))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CHS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CHS))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CTS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CTS))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CVSF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CVSF))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CEPO) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CEPO) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CEAUTOSTART) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CEAUTOSTART) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CEI) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CEI) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C485OUT) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'C485OUT) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C232OUT) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'C232OUT) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTON) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTON) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTBB) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTBB) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTMX) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTMX) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTBL) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTBL) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTT) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTT) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTTBP) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTTBP) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTST) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTST) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CBTFILT) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CBTFILT) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CWSSC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CWSSC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CWS) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CWS) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CWT) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CWT) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CTD) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CTD) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CWSS) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CWSS) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CHO) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CHO) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CHS) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CHS) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CTS) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CTS) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CVSF) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CVSF) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "rti_dvl/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "rti_dvl/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "b4a778ac84916e4541ed9df1cd1fc61c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "b4a778ac84916e4541ed9df1cd1fc61c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "# Subsystem Configuration~%# 3: 600 kHz 4 beam 20 degree piston~%string CEPO ~%~%# CEAUTOSTART On/OFF~%# 0	OFF~%# 1	DO NOT USE~%# 2	RS232~%# 3	RS485~%# 4	RS422~%# 5	EMAC~%# 6	UDP~%string CEAUTOSTART~%~%# Ensemble output period in HH:MM:SS.hh~%string CEI~%~%# Output format~%# [1] - RoweTech Binary (RTB)~%# [1] - RoweTech DVL (RTD)~%# [2] - ASCII Format~%# [2] - DVL Format~%# [3] - NMEA Status String~%# [4] - Ocean Server NMEA DVL Format~%# [5] - DVL Format~%# [100] - PD0~%# [103] - PD3 Binary Format~%# [104] - PD4 Binary Format~%# [105] - PD5 Binary Format~%# [106] - PD6 ASCII Format~%# [113] - PD13 ASCII Format~%string C485OUT ~%string C232OUT ~%~%# 1 - Turn ON Bottom Tracking~%# 0 - Turn OFF Bottom Tracking~%string CBTON~%~%# Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.~%# n, m, d, x~%# [n] - Transmit Pulse Type and Processing~%#     0 = Narrowband.~%#     Provides long range profiles at the expense of variance.~%#     Not recommended for use with bin size less than the default bin size.~%#     1 = Broadband.~%#     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).~%#     Used in conjunction with CWPBP for small bins.~%#     2 = Un-coded Broadband (no ambiguity resolver).~%#     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.~%#     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).~%#     Provides ultra low variance for small bin sizes.~%#     7 = Auto Switch (n=0, n=2, n=4)~%# [m] - Lag length in vertical meters (m)~%#     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    ~%# [d] - Long Range Narrowband Auto Switch Depth (m)~%#     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.~%# [x] - Beam Multiplex~%#     1 = ping and process each beam one at a time.~%#     2 = ping and process beam pairs.~%#     4 = ping and process all four beams together.~%string CBTBB~%~%# Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.~%string CBTMX~%~%# Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.~%# n.nn, m.mm~%#     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.~%#     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.~%string CBTBL~%~%# Bottom Track thresholds.~%# a,b,c,d~%#     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so \"b\" allows for two different SNR settings one for shallow (\"a\") and one for deep (\"c\").~%#     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the \"d\" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the \"d\" setting you may need set \"d\" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.~%string CBTT~%~%# Not used for bottom tracking only~%# This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.~%string CBTTBP~%~%# Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.~%# c.cc,q.qq,v.vv~%#     [c.cc] - Correlation threshold.~%#     [q.qq] - Error Velocity threshold. Range: m/s~%#     [v.vv] - Velocity threshold. Range: m/s~%string CBTST~%~%# Low pass filtering helps reduce velocity measurement noise~%# a,b,c,d,e~%# We do not recommend that the filter be enabled.~%string CBTFILT~%~%# Water Speed of Sound Control.~%# 1, 2, 3, 4~%#     [1] - Water Temperature Source~%#     [2] - Transducer Depth Source~%#     [3] - Salinity Source~%#     [4] - Speed of Sound Source~%# Choices~%#     0 = Command~%#     1 = Sensor~%#     2 = Internal Calculation.~%string CWSSC~%~%# Water Salinity (ppt). Used in the water speed of sound calculation~%string CWS~%~%# Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.~%string CWT~%~%# Transducer Depth (meters). Used in the water speed of sound calculation.~%string CTD~%~%# Water Speed of Sound (meters per second).~%string CWSS~%~%# This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.~%string CHO~%# Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.~%string CHS~%# Tilt Source. Set whether to use the tilt from internal compass or no tilt.~%string CTS~%~%# Velocity Scale Factor~%#  n.nn, m.mm~%#     [n.nn] - Water Velocity Scale Factor~%#     [m.mm] - Bottom Track Scale Factor~%string CVSF~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "# Subsystem Configuration~%# 3: 600 kHz 4 beam 20 degree piston~%string CEPO ~%~%# CEAUTOSTART On/OFF~%# 0	OFF~%# 1	DO NOT USE~%# 2	RS232~%# 3	RS485~%# 4	RS422~%# 5	EMAC~%# 6	UDP~%string CEAUTOSTART~%~%# Ensemble output period in HH:MM:SS.hh~%string CEI~%~%# Output format~%# [1] - RoweTech Binary (RTB)~%# [1] - RoweTech DVL (RTD)~%# [2] - ASCII Format~%# [2] - DVL Format~%# [3] - NMEA Status String~%# [4] - Ocean Server NMEA DVL Format~%# [5] - DVL Format~%# [100] - PD0~%# [103] - PD3 Binary Format~%# [104] - PD4 Binary Format~%# [105] - PD5 Binary Format~%# [106] - PD6 ASCII Format~%# [113] - PD13 ASCII Format~%string C485OUT ~%string C232OUT ~%~%# 1 - Turn ON Bottom Tracking~%# 0 - Turn OFF Bottom Tracking~%string CBTON~%~%# Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.~%# n, m, d, x~%# [n] - Transmit Pulse Type and Processing~%#     0 = Narrowband.~%#     Provides long range profiles at the expense of variance.~%#     Not recommended for use with bin size less than the default bin size.~%#     1 = Broadband.~%#     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).~%#     Used in conjunction with CWPBP for small bins.~%#     2 = Un-coded Broadband (no ambiguity resolver).~%#     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.~%#     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).~%#     Provides ultra low variance for small bin sizes.~%#     7 = Auto Switch (n=0, n=2, n=4)~%# [m] - Lag length in vertical meters (m)~%#     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    ~%# [d] - Long Range Narrowband Auto Switch Depth (m)~%#     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.~%# [x] - Beam Multiplex~%#     1 = ping and process each beam one at a time.~%#     2 = ping and process beam pairs.~%#     4 = ping and process all four beams together.~%string CBTBB~%~%# Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.~%string CBTMX~%~%# Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.~%# n.nn, m.mm~%#     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.~%#     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.~%string CBTBL~%~%# Bottom Track thresholds.~%# a,b,c,d~%#     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so \"b\" allows for two different SNR settings one for shallow (\"a\") and one for deep (\"c\").~%#     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts \"a\" and/or \"c\" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.~%#     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the \"d\" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the \"d\" setting you may need set \"d\" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.~%string CBTT~%~%# Not used for bottom tracking only~%# This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.~%string CBTTBP~%~%# Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.~%# c.cc,q.qq,v.vv~%#     [c.cc] - Correlation threshold.~%#     [q.qq] - Error Velocity threshold. Range: m/s~%#     [v.vv] - Velocity threshold. Range: m/s~%string CBTST~%~%# Low pass filtering helps reduce velocity measurement noise~%# a,b,c,d,e~%# We do not recommend that the filter be enabled.~%string CBTFILT~%~%# Water Speed of Sound Control.~%# 1, 2, 3, 4~%#     [1] - Water Temperature Source~%#     [2] - Transducer Depth Source~%#     [3] - Salinity Source~%#     [4] - Speed of Sound Source~%# Choices~%#     0 = Command~%#     1 = Sensor~%#     2 = Internal Calculation.~%string CWSSC~%~%# Water Salinity (ppt). Used in the water speed of sound calculation~%string CWS~%~%# Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.~%string CWT~%~%# Transducer Depth (meters). Used in the water speed of sound calculation.~%string CTD~%~%# Water Speed of Sound (meters per second).~%string CWSS~%~%# This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.~%string CHO~%# Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.~%string CHS~%# Tilt Source. Set whether to use the tilt from internal compass or no tilt.~%string CTS~%~%# Velocity Scale Factor~%#  n.nn, m.mm~%#     [n.nn] - Water Velocity Scale Factor~%#     [m.mm] - Bottom Track Scale Factor~%string CVSF~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'CEPO))
     4 (cl:length (cl:slot-value msg 'CEAUTOSTART))
     4 (cl:length (cl:slot-value msg 'CEI))
     4 (cl:length (cl:slot-value msg 'C485OUT))
     4 (cl:length (cl:slot-value msg 'C232OUT))
     4 (cl:length (cl:slot-value msg 'CBTON))
     4 (cl:length (cl:slot-value msg 'CBTBB))
     4 (cl:length (cl:slot-value msg 'CBTMX))
     4 (cl:length (cl:slot-value msg 'CBTBL))
     4 (cl:length (cl:slot-value msg 'CBTT))
     4 (cl:length (cl:slot-value msg 'CBTTBP))
     4 (cl:length (cl:slot-value msg 'CBTST))
     4 (cl:length (cl:slot-value msg 'CBTFILT))
     4 (cl:length (cl:slot-value msg 'CWSSC))
     4 (cl:length (cl:slot-value msg 'CWS))
     4 (cl:length (cl:slot-value msg 'CWT))
     4 (cl:length (cl:slot-value msg 'CTD))
     4 (cl:length (cl:slot-value msg 'CWSS))
     4 (cl:length (cl:slot-value msg 'CHO))
     4 (cl:length (cl:slot-value msg 'CHS))
     4 (cl:length (cl:slot-value msg 'CTS))
     4 (cl:length (cl:slot-value msg 'CVSF))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':CEPO (CEPO msg))
    (cl:cons ':CEAUTOSTART (CEAUTOSTART msg))
    (cl:cons ':CEI (CEI msg))
    (cl:cons ':C485OUT (C485OUT msg))
    (cl:cons ':C232OUT (C232OUT msg))
    (cl:cons ':CBTON (CBTON msg))
    (cl:cons ':CBTBB (CBTBB msg))
    (cl:cons ':CBTMX (CBTMX msg))
    (cl:cons ':CBTBL (CBTBL msg))
    (cl:cons ':CBTT (CBTT msg))
    (cl:cons ':CBTTBP (CBTTBP msg))
    (cl:cons ':CBTST (CBTST msg))
    (cl:cons ':CBTFILT (CBTFILT msg))
    (cl:cons ':CWSSC (CWSSC msg))
    (cl:cons ':CWS (CWS msg))
    (cl:cons ':CWT (CWT msg))
    (cl:cons ':CTD (CTD msg))
    (cl:cons ':CWSS (CWSS msg))
    (cl:cons ':CHO (CHO msg))
    (cl:cons ':CHS (CHS msg))
    (cl:cons ':CTS (CTS msg))
    (cl:cons ':CVSF (CVSF msg))
))
