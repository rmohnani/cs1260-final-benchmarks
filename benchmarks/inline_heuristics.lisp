(define (x x) (+ (z x) (y x)))
(define (y y) (+ (+ 23 (- 2 10)) y))
(define (z x) (- (+ 2234 3434) x))
(define (fibb x)
  (if (= x 1) 1
    (if (= x 2) 1 (+ (fibb (- x 1)) (fibb (- x 2))))))

(print (+ (+ (z 23) (+ (y 23) (x 231))) (fibb 2)))
