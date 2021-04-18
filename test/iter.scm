#lang scheme



(require "./colorize.scm")


(define-syntax +set!
  (syntax-rules ()
    ((_ binding increment)
     (set! binding (+ binding increment)))))




;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(define cont 0)
(for*/list (

  (x (list 1 2 3))
  (y "abc")

  )
        (py_s "test ->")



        (pg_s "char x")
        (display (char? x))
        (display "\n")
        (pg_s "char y")
        (display (char? y))
        (display "\n")

        (pg_s "number x")
        (display (number? x))
        (display "\n")
        (pg_s "number y")
        (display (number? y))
        (display "\n")


        (py_s "cont ->")
        (display (list x y))
        (display "\n")
        (py_n cont)
        (+set! cont -1)

        (display "\n")
        (display "\n")


        (list x y)
)



















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------























;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
