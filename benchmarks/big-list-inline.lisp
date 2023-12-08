(define (quad x) (+ x (+ x (+ x x))))
(define (make-list n) (if (= n 0) () (pair (quad n) (make-list (- n 1)))))
(make-list 8000)
