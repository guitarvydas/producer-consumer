(in-package :producer-consumer)

(defun generate-intermediate ()
  (format *standard-output* "~&transpiling producer-consumer.dsl...")
  (format *standard-output* "~&~a~%"
	  (state-dsl::transpile-state
	   (asdf:system-relative-pathname :producer-consumer "producer-consumer.dsl")
	   (asdf:system-relative-pathname :producer-consumer "producer-consumer-intermediate.lisp"))))
   
