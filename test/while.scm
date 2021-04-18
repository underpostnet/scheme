#lang scheme



(require "./colorize.scm")


(define-syntax +set!
  (syntax-rules ()
    ((_ binding increment)
     (set! binding (+ binding increment)))))

; (+set! cont -1)




;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------


(require dyoo-while-loop)

(while #t

  (define input (read-line))


  ; cuando se cumpla ejecutar
  (when (regexp-match #px"test" input)

    (printf "test print test a \n")

    (printf "test print test b \n")

    (continue)

  )

  ; cuando se cumpla ejecutar
  (when (regexp-match #px"quit" input)

    (printf "quit -> \n")

    (break)

  )

  ; si no cumple ejecutar
  (unless
    (regexp-match #px"please" input)

    (printf "You didn't say please\n")

    (printf "test a \n")

    (printf "test b \n")

    (continue)

  )

)





;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------


(pg_s " test while -> ")

(define cont 0)

(while (<= cont 5)


  (py_n cont)
  (+set! cont 1)
  ; sleep segundos
  (sleep 2)


)













;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------










;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
