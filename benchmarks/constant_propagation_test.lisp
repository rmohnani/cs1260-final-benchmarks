(define (f n) (if (= n 0) 0 (add1 (add1 (f (- n 1))))))
(print (f 100000))
