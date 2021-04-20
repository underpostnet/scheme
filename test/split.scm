#lang scheme


(require "./colorize.scm")

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------




(define map_list (map string (string->list "abcd")))

map_list

(list? map_list)

(py_s "split test 1 ->")

(string-split "  aaa  bbb ccc \r\n\t  bbb  aaa" "bbb" #:trim? #t #:repeat? #f)
(string-split "  aaa  bbb ccc \r\n\t  bbb  aaa" "bbb" #:trim? #t #:repeat? #t)
(string-split "  aaa  bbb ccc \r\n\t  bbb  aaa" "bbb" #:trim? #f #:repeat? #t)
(string-split "  aaa  bbb ccc \r\n\t  bbb  aaa" "bbb" #:trim? #f #:repeat? #f)

(py_s "split test 2 ->")

(string-split "  aaa  bbb ccc \r\n\t bbb  aaa" #:trim? #t #:repeat? #f)
(string-split "  aaa  bbb ccc \r\n\t bbb  aaa" #:trim? #t #:repeat? #t)
(string-split "  aaa  bbb ccc \r\n\t bbb  aaa" #:trim? #f #:repeat? #t)
(string-split "  aaa  bbb ccc \r\n\t bbb  aaa" #:trim? #f #:repeat? #f)















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
























;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
