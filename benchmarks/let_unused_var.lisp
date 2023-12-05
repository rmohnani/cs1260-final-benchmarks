(define (fib x) (if (< x 2) (if (= x 0) 0 1) (+ (fib (- x 1)) (fib (- x 2)))))
(let ((x (fib 30))) (print 0))
