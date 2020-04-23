(defsystem :producer-consumer
  :depends-on (:loops :alexandria :parsing-assembler/use :sm-dsl/use)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")
				     (:file "path")))))

(defsystem :producer-consumer/generate
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "generate")))))

(defsystem :producer-consumer/run
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "main")))))

