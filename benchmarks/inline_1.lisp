(define (f x y) (+ (let ((x 4)) (add1 x)) (- x y)))
(define (g x) (add1 x))
(define (h x y) (+ (f x (g 2)) 3))

(print (+ (let ((x 5)) (+ (f 32 x) (g x))) (let ((x 42)) (h x 22))))
