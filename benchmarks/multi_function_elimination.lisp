(define (summation n) (if (= n 0) 1 (+ n (summation (- n 1)))))

(define (negation n) (- 0 n))

(let ((x (+ (negation (summation 5)) (negation (summation 5)))))
    (print (+ (+ x (negation (summation 5))) (- x (negation (summation 6))))))