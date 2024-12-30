;                                                         -*-Scheme-*-
;;;
;;; Add the default component libraries
;;;

(define geda-office-sym-path (build-path geda-data-path "sym-office"))
(for-each
 (lambda (dir)
   (if (list? dir)
       (component-library (build-path geda-office-sym-path (car dir)) (cadr dir))
       (component-library (build-path geda-office-sym-path dir)))
   )
 (reverse '(
    ("office" "Office Automation")
    )))
