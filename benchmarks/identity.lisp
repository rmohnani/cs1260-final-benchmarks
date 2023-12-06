(define (g x) (add1 x))
(define (f x) (sub1 (g x)))
(define (h x) x)
(print (= (f 30) (h 30)))