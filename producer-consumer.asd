(defsystem :producer-consumer
  :depends-on (:loops :alexandria :parsing-assembler/use :state-dsl/use)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")))))

(defsystem :producer-consumer/final
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components (
				     (:file "mechanisms")
				     (:file "main")))))

