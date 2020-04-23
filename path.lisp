(in-package :producer-consumer)

(defun path (filename)
  (asdf:system-relative-pathname :producer-consumer filename))
