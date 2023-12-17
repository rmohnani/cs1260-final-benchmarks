(define (fib n)
    (if (= n 0)
        0
        (if (= n 1)
            1
            (+ (fib (- n 1)) (fib (- n 2))))))

(do 
    (print (fib 3))
    (print (fib 8))
    (print (fib 12)))
