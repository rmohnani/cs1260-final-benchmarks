(define (nthAdd1 x) (if (= 0 x) 0 (add1 (nthAdd1 (- x 1)))))
(let ((x (nthAdd1 100000))) (print x))