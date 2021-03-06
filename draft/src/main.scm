
(require colorize)

; asignamos ruta de archivo
(define path "c:/dd/deploy_area/scheme/draft/doc/meta")
(display "Ruta Archivo ->\n")
; (write path)
(display (colorize path 'green))
(display "\n")


; contamos la cantidad de caracteres del archivo
(define cont_char_content_path (call-with-input-file path
  (lambda (f)
    (for/fold ((counter 0))
              ((i (in-input-port-bytes f)))
      (+ counter 1)))))
(display "Cantida de Caracteres Archivo ->\n")
; (write cont_char_content_path)
(display (colorize (number->string cont_char_content_path) 'yellow))
(display "\n")


; imprimimos por consola contenido del archivo
(define file_content (with-input-from-file path
    (lambda () (read-string cont_char_content_path) )))
(display "contenido archivo ->\n")
; (write file_content)
(display (colorize file_content 'green))
(display "\n")
