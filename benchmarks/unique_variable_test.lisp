(define (f x y) (+ y (+ y (+ x y))))
(define (g y x) (+ x (- 4 (- y y))))
(define (h xy x y) (- y (+ xy (+ x (- xy (+ y xy))))))
(define (i x y) (- (+ x y) (- (- x (+ y x)) (+ x y))))
(define (j xx y) (- y (+ xx (+ xx (- xx (+ y xx))))))

print((+ (f 1 2) (- (g 2 1) (h (i 3 2) (j 421 21) 4))))
