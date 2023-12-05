(define (fib x) (if (< x 2) (if (= x 0) 0 1) (+ (fib (- x 1)) (fib (- x 2)))))
(let ((x (if (= 4 (+ 1 2)) (fib 30) 5))) (print x))
