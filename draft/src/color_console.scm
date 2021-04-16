


(require colorize)


(display "\n")


(display "colorize test")


(display "\n\n")


(display (colorize/argv 'all))


(display "\n\n")


(display (colorize/argv 'style))


(display "\n\n")


(display (colorize "this is a raw red string on blue with underline" 'red
                                                              #:background 'blue
                                                              #:style 'underline))
(display "\n\n")
