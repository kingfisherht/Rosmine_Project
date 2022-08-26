; Auto-generated. Do not edit!


(cl:in-package mine_picture-srv)


;//! \htmlinclude picture-request.msg.html

(cl:defclass <picture-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass picture-request (<picture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <picture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'picture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mine_picture-srv:<picture-request> is deprecated: use mine_picture-srv:picture-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <picture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mine_picture-srv:start-val is deprecated.  Use mine_picture-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <picture-request>) ostream)
  "Serializes a message object of type '<picture-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <picture-request>) istream)
  "Deserializes a message object of type '<picture-request>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<picture-request>)))
  "Returns string type for a service object of type '<picture-request>"
  "mine_picture/pictureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'picture-request)))
  "Returns string type for a service object of type 'picture-request"
  "mine_picture/pictureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<picture-request>)))
  "Returns md5sum for a message object of type '<picture-request>"
  "8dcd12f77a8502335873197b5e1c90ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'picture-request)))
  "Returns md5sum for a message object of type 'picture-request"
  "8dcd12f77a8502335873197b5e1c90ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<picture-request>)))
  "Returns full string definition for message of type '<picture-request>"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'picture-request)))
  "Returns full string definition for message of type 'picture-request"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <picture-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <picture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'picture-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude picture-response.msg.html

(cl:defclass <picture-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass picture-response (<picture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <picture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'picture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mine_picture-srv:<picture-response> is deprecated: use mine_picture-srv:picture-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <picture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mine_picture-srv:feedback-val is deprecated.  Use mine_picture-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <picture-response>) ostream)
  "Serializes a message object of type '<picture-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <picture-response>) istream)
  "Deserializes a message object of type '<picture-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<picture-response>)))
  "Returns string type for a service object of type '<picture-response>"
  "mine_picture/pictureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'picture-response)))
  "Returns string type for a service object of type 'picture-response"
  "mine_picture/pictureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<picture-response>)))
  "Returns md5sum for a message object of type '<picture-response>"
  "8dcd12f77a8502335873197b5e1c90ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'picture-response)))
  "Returns md5sum for a message object of type 'picture-response"
  "8dcd12f77a8502335873197b5e1c90ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<picture-response>)))
  "Returns full string definition for message of type '<picture-response>"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'picture-response)))
  "Returns full string definition for message of type 'picture-response"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <picture-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <picture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'picture-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'picture)))
  'picture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'picture)))
  'picture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'picture)))
  "Returns string type for a service object of type '<picture>"
  "mine_picture/picture")