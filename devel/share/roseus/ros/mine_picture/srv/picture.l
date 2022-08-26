;; Auto-generated. Do not edit!


(when (boundp 'mine_picture::picture)
  (if (not (find-package "MINE_PICTURE"))
    (make-package "MINE_PICTURE"))
  (shadow 'picture (find-package "MINE_PICTURE")))
(unless (find-package "MINE_PICTURE::PICTURE")
  (make-package "MINE_PICTURE::PICTURE"))
(unless (find-package "MINE_PICTURE::PICTUREREQUEST")
  (make-package "MINE_PICTURE::PICTUREREQUEST"))
(unless (find-package "MINE_PICTURE::PICTURERESPONSE")
  (make-package "MINE_PICTURE::PICTURERESPONSE"))

(in-package "ROS")





(defclass mine_picture::pictureRequest
  :super ros::object
  :slots (_start ))

(defmethod mine_picture::pictureRequest
  (:init
   (&key
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mine_picture::pictureResponse
  :super ros::object
  :slots (_feedback ))

(defmethod mine_picture::pictureResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mine_picture::picture
  :super ros::object
  :slots ())

(setf (get mine_picture::picture :md5sum-) "8dcd12f77a8502335873197b5e1c90ec")
(setf (get mine_picture::picture :datatype-) "mine_picture/picture")
(setf (get mine_picture::picture :request) mine_picture::pictureRequest)
(setf (get mine_picture::picture :response) mine_picture::pictureResponse)

(defmethod mine_picture::pictureRequest
  (:response () (instance mine_picture::pictureResponse :init)))

(setf (get mine_picture::pictureRequest :md5sum-) "8dcd12f77a8502335873197b5e1c90ec")
(setf (get mine_picture::pictureRequest :datatype-) "mine_picture/pictureRequest")
(setf (get mine_picture::pictureRequest :definition-)
      "bool start
---
string feedback
")

(setf (get mine_picture::pictureResponse :md5sum-) "8dcd12f77a8502335873197b5e1c90ec")
(setf (get mine_picture::pictureResponse :datatype-) "mine_picture/pictureResponse")
(setf (get mine_picture::pictureResponse :definition-)
      "bool start
---
string feedback
")



(provide :mine_picture/picture "8dcd12f77a8502335873197b5e1c90ec")


