
#lang scheme

(require colorize)

(provide pg)
(define pg
  ( lambda (str) (display (colorize str 'green) )
  )
)

(provide py)
(define py
  ( lambda (str) (display (colorize str 'yellow) )
  )
)
