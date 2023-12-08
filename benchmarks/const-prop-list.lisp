(define (make-thirty) (+ 5 (+ 5 (+ 5 (+ 5 (+ 5 5))))))
(define (make-list n) (if (= n 0) () (pair (make-thirty) (make-list (- n 1)))))
(make-list 8000)
