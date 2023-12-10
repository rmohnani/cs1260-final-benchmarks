(define (fib n)
  (if (< n 2) n
      (+ (fib (- n 2)) (fib (- n 1)))))

(define (many-arith n) 
    (if (= (+ 100 1) (+ 100 1))
        (+ 1 (+ 2 (+ 1 (+ 2 1))))
        (fib n)))

(define (loop n)
    (if (= n 0)
        0
        (+ (many-arith n) (loop (- n 1)))))

(print (loop 1000))