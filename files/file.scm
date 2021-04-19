#lang scheme

(require json)

(require "../test/colorize.scm")

; https://docs.racket-lang.org/guide/ports.html

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(define table (make-hash))

(hash-set! table 'a "test_a")
(hash-set! table 'b "test_b")
(hash-set! table 'c (list "a" #t 4 6))

(display table)

(define out (open-output-file "./data/output.json" #:exists 'truncate))

(display (jsexpr->string table) out)

(close-output-port out)
























;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------










;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
