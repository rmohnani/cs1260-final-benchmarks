(define (f x) (+ (+ x 2) (+ x 2)))
(define (g x) (f (+ (+ x 4) (+ x 4))))
(print (+ (g (read-num)) (g (read-num))))