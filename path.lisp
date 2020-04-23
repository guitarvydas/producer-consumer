(in-package :sm-dsl)

(defun path (filename)
  (asdf:system-relative-pathname :producer-consumer filename))
