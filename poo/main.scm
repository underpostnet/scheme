#lang scheme


(require "../test/colorize.scm")


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

(define persona%
   (class object%
      (init-field nombre)
      (field (apellidos null) (fecha-nacimiento null) (amigos null))

      (define/public (es-amigo? otro)
             ;memq comprueba si otro está en amigos usando la igualdad eq?
         (if (memq otro amigos)
            #t
            #f))

      (define/public (añade-amigo otro)
         (if (not (es-amigo? otro)) ; tambien es posible llamar a los métodos directamente
            (begin
               (set! amigos (cons otro amigos))
               (send otro añade-amigo this)) void))

       (define/public (saludan-amigos)
          (for-each
              (lambda (f) (send f di-hola))
              amigos))

      (define/public (set-apellidos nuevos-apellidos)
         (set! apellidos nuevos-apellidos))

      (define/public (set-fecha-nacimento fecha)
         (set! fecha-nacimiento fecha))

      (define/public (get-nombre-completo)
         (if (not (null? apellidos))
            (string-append nombre " " apellidos)
            nombre))

      (define/public (di-hola)
         (define nombre-completo (send this get-nombre-completo))
         (printf "hola, soy ~a~%" nombre-completo))

      (super-new)))


(define nadal (new persona% (nombre "Rafa")))
(define federer (new persona% (nombre "Roger")))
(define djokovic (new persona% (nombre "Novak")))
(send nadal añade-amigo federer)
(send nadal añade-amigo djokovic)
(send nadal saludan-amigos)
(send federer saludan-amigos)















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
















;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
