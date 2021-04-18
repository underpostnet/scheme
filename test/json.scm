#lang scheme


(require json)


(require "./colorize.scm")


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

; https://docs.racket-lang.org/reference/data.html

(pg_s "\n JSON TEST \n")

(py_s "\n symbol | string |  number | boolean | list \n")

(define json_content_a (call-with-input-file "./test.json" read-json))

(for ( ( (key val) (in-hash json_content_a) ) )



    (py_s "new test ->")
    (display key)
    (display "\n")
    (display (symbol? key))
    (display (string? key))
    (display (number? key))
    (display (boolean? key))
    (display (list? key))
    (display "\n\n")
    (display val)
    (display "\n")
    (display (symbol? val))
    (display (string? val))
    (display (number? val))
    (display (boolean? val))
    (display (list? val))
    (display "\n\n")

    (py_s "resume ->")
    (printf "~a = ~a~%" key val)
    (display "\n\n")



)








;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
