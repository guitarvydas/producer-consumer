(in-package :producer-consumer)

(defun create-producer-consumer()
  (let ((p (make-instance 'rpa:parser)))
    (let ((producer-consumer-dsl-str 
      (alexandria:read-file-into-string
        (asdf:system-relative-pathname :statemachine-transpiler "statemachine-transpiler.rpa"))))
      (let ((producer-consumer-lisp-str (rp-parser:scan-and-parse producer-consumer-dsl-str)))
	(with-open-file 
	    (pc-lisp-file
	     (asdf:system-relative-pathname :statemachine-transpiler "producer-consumer.lisp")
	     :direction :output :if-exists :supersede :if-does-not-exist :create)
	  (write-string producer-consumer-lisp-str pc-lisp-file)
	  :created-producer-consumer)))))
