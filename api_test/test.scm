#lang scheme

; https://docs.racket-lang.org/http-easy/index.html#%28part._.Making_.Requests%29

(require "../test/colorize.scm")
(require net/http-easy)

; pg_n
; pg_s
; py_n
; py_s

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

; (define scheme "http")
; (define host "localhost")
; (define port 3001)
; (define uri "http://localhost:3001")
; (define path "/koyn")
; (define method "GET")

(define res
  (get "http://localhost:3001/koyn"))

(pg_s "res get http <http://localhost:3001/koyn> ->")
(display res)
(display "\n")

(pg_s "response-status-code ->")
(display (response-status-code res))
(display "\n")

(pg_s "response-status-message ->")
(display (response-status-message res))
(display "\n")

(pg_s "response-headers-ref ->")
(display (response-headers-ref res 'date))
(display "\n")


(pg_s "response-body ->")
(display (response-body res))
; los primeros 30 caracteres del cuerpo html
; (subbytes (response-body res) 0 30)
(display "\n")















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------










;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
