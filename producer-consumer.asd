(defsystem :producer-consumer
  :depends-on (:rp-parser)
  :around-compile (lambda (next)
                    (proclaim '(optimize (debug 3)
                                         (safety 3)
                                         (speed 0)))
                    (funcall next))
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")
				     (:file "create-producer-consumer" 
					    :depends-on ("package"))))))


(defsystem :producer-consumer/run
  :depends-on (:producer-consumer)
  :around-compile (lambda (next)
                    (proclaim '(optimize (debug 3)
                                         (safety 3)
                                         (speed 0)))
                    (funcall next))
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")
				     (:file "producer-consumer")
				     (:file "run" :depends-on ("package" "producer-consumer"))))))



