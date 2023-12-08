(define (add1-n-times n) 
    (if (= n 0) 
    0 
    (+ (add1 0) (add1-n-times (sub1 n))))) 

(add1-n-times 100000)