#lang scheme



(require "./colorize.scm")

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(pg_s "upper ->")

(define aA "test")
aA
; aa -> error -> aa: unbound identifier


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

; https://docs.racket-lang.org/reference/time.html#%28def._%28%28quote._~23~25kernel%29._current-seconds%29%29

(pg_s "get current timestamp ->")
(define current_time (current-seconds))
current_time

(pg_s "test 2 ->")
(define date_test (seconds->date current_time) )
date_test

(pg_s "test 3 ->")
(date-second date_test)
(date-minute date_test)
(date-hour date_test)
(date-day date_test)
(date-month date_test)
(date-year date_test)
(date-week-day date_test)
(date-year-day date_test)
(date-dst? date_test)
(date-time-zone-offset date_test)








;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------



















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
