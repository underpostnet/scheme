#lang scheme

(require json)

(require "../test/colorize.scm")



;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------




(define json_content_a (call-with-input-file "./input.json" read-json))


(pg_s "test 1")

(display json_content_a)
(display "\n")
(display (jsexpr? json_content_a))
(display "\n")

(pg_s "test 2")

(display (hash-ref json_content_a 'a))
(display "\n")
(display (hash-ref json_content_a 'b))
(display "\n")
(display (hash-ref json_content_a 'c))
(display "\n")


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------




(pg_s "test 3")

(define table (make-hash))

(hash-set! table 'a "test_a")
(hash-set! table 'b "test_b")
(hash-set! table 'c (list 1 2 3))
(display table)
(display "\n")

(hash-set! table 'a "test_update")
(hash-set! table 'c (list "a" "b" "c"))
(display table)
(display "\n")





;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
