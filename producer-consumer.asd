(defsystem :producer-consumer
  :depends-on (:sm-dsl/use)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "package")
				     (:file "path")))))

(defsystem :producer-consumer/generate
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:static-file "producer-consumer.dsl")
				     (:file "generate"
					    :depends-on ("package"
							 "producer-consumer.dsl"))))))

				     

(defsystem :producer-consumer/use
  :depends-on (:producer-consumer)
  :components ((:module "source"
                        :pathname "./"
                        :components ((:file "producer-consumer")))))

