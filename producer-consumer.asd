(defsystem :producer-consumer
  :depends-on (:loops :alexandria :parsing-assembler/use :state-dsl/use :stack-dsl/use)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")))))


(defsystem :producer-consumer/generate-intermediate
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:static-file "stacks.dsl")
				     (:static-file "producer-consumer.dsl")
				     (:file "generate-intermediate")))))

(defsystem :producer-consumer/final
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "producer-consumer-intermediate")
				     (:file "stacks")
				     (:file "mechanisms")
				     (:file "main")))))

