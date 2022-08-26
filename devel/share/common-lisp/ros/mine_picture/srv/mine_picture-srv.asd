
(cl:in-package :asdf)

(defsystem "mine_picture-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "picture" :depends-on ("_package_picture"))
    (:file "_package_picture" :depends-on ("_package"))
  ))