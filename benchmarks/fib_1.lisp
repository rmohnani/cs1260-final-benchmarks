(define (fib x) 
    (if (= x 0) 1 
    (if (= x 1) 1 
    (+ 
        (fib (sub1 x)) 
        (fib (sub1 (sub1 x)))))))

(print (fib 7))
