(define (f x y) (+ x y))
(define (g x y) (- x y))
(define (h x) (+ (read-num) (+ (g 2 x) (f x 23))))
(print (h 2))