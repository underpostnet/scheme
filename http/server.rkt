#lang racket

; https://docs.racket-lang.org/web-server/run.html

(require web-server/servlet
         web-server/servlet-env)




(define (main-path req)
 (response/xexpr
  `(html (head (title "Racket Web"))
         (body (p "./ path")))))




(serve/servlet main-path
              #:port 8080
              #:servlet-path "/"
              #:extra-files-paths
              (list
               (build-path "c:/dd/deploy_area/scheme/http/public")))
