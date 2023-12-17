(define (f x) (+ (add1 (add1 (add1 (add1 (sub1 (add1 (sub1 (add1 (add1 (sub1 (add1 (sub1 (+ x (+ x (add1 0))))))))))))))) x))
(print (f 0))
