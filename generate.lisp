(in-package :producer-consumer)

(defun generate ()
  (sm-dsl::transpile-sm (path "producer-consumer.dsl")
			(path "producer-consumer.lisp")))
