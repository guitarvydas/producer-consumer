(uiop:run-program "rm -rf ~/.cache/common-lisp ;
  rm -rf ~/quicklisp/local-projects/*/*.fasl ;
  rm -rf ~/quicklisp/local/projects/*/*~")
(ql:quickload :parsing-assembler)

#| stack-dsl |#
(ql:quickload :stack-dsl/generate)
(stack-dsl::generate)

#| sm-dsl code generation |#
(ql:quickload :sm-dsl)
(load (sm-dsl::path "generate-stacks.lisp"))
(sm-dsl::generate-stacks)
(ql:quickload :sm-dsl/generate)
(sm-dsl::generate "SM-DSL")

#| sm-dsl |#
(load (sm-dsl::path "stacks.lisp"))
(load (sm-dsl::path "classes.lisp"))
(load (sm-dsl::path "macros.lisp"))
(load (sm-dsl::path "sm-dsl.lisp"))
(load (sm-dsl::path "mechanisms.lisp"))
(load (sm-dsl::path "transpile.lisp"))

#| producer-consumer |#
(ql:quickload :producer-consumer)
(load (producer-consumer::path "generate.lisp"))
(producer-consumer::generate)

