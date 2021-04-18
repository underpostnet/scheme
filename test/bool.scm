#lang scheme



(require "./colorize.scm")



;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------


(define test_a (and (or #t #f #f) #f)) ; -> #f
(define test_b (or (or #t #f #f) #f)) ; -> #t
(define test_c (or (> 5 3) #f)) ; -> #t
(define test_d (and (> 5 3) #f)) ; -> #f
(define test_e (or (< 5 3) (and #t #t))) ; -> #t

(define test_1 (eq? "a" "a")) ; -> #t
(define test_2 (eq? 3 3)) ; -> #t
(define test_3 (eq? "a" 3)) ; -> #f
(define test_4 (eq? 'sd 'sd)) ; -> #t
(define test_5 (eq?  "a" 'sd)) ; -> #f


(pg_s "test boolean 1 ->")

(display test_a)
(display "\n")
(display test_b)
(display "\n")
(display test_c)
(display "\n")
(display test_d)
(display "\n")
(display test_e)
(display "\n")

(pg_s "test boolean 2 ->")

(display test_1)
(display "\n")
(display test_2)
(display "\n")
(display test_3)
(display "\n")
(display test_4)
(display "\n")
(display test_5)
(display "\n")




;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------



















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
