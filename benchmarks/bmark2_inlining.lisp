(define (f x y z) (+ x (+ y z)))
(define (g a b c) (+ (f a b c) (f a b c)))
(define (h d e f) (- (f d e f) (g d e f)))
(print (h 3 7 9))