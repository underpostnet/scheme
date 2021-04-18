#lang scheme

; (define eval true false)

(require "./colorize.scm")

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Basic Op")

(- 4 2)

(- 6 1 1 1 1 (+ 1 1))

(- 5 (- 4 2))

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "If")

(if (zero? 0)
    (+ 1 1) 3)

(if (zero? 1)
    (+ 1 1) 3)

(if (zero? 0)
    (+ 1 1) (- 2 3))

(if (zero? 1)
    (+ 1 1) (- 2 3))

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Function")

(define <p1> (lambda (x) (+ x 10)))
(define f <p1>)
(f 7)
(<p1> 7)

; f(x) = x + 10

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Begin")

(+ 1 (begin
         (printf "hi1\n")
         (printf "hi2\n")
         (printf "hi3\n")
         (printf "hi4\n")
         (printf "hi5\n")
         2))

; begin -> evaluated without previous defined function

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Set Assignment")

(define x 10)

(begin (set! x 8) x)

(begin (void) x)

(begin
  (void)
  (py_n 234)
  (begin (set! x 5) x)
)

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Json test 1")

(require json)

(with-input-from-string
    "{
        \"arr\"  : [1, 2, \"test\", 3],
        \"arr2\" : true,
        \"arr3\" : \"test\"
    }"
    (λ () (read-json) )
)

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Json test 2")

(define y (string->jsexpr "{
    \"arr\"  : [1, 2, \"test\", 3],
    \"arr2\" : true,
    \"arr3\" : \"test\"
}"))

(for ( ( (key val) (in-hash y) ) )

  (printf "~a = ~a~%" key val)

)

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "Json test 3")

(define z (call-with-input-file "./test.json" read-json))

(for ( ( (key val) (in-hash z) ) )

  (printf "~a = ~a~%" key val)

)


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "string replace")

(define content_test_a "hola hola \n\r \" ")

content_test_a
(set! content_test_a (string-replace content_test_a "\n" ""))
(set! content_test_a (string-replace content_test_a "\r" ""))
(set! content_test_a (string-replace content_test_a "\"" "\""))
(set! content_test_a (string-replace content_test_a "hola" "chao"))
content_test_a

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
