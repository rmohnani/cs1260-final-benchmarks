(define (a x) (+ x (- 5 (- 3 1))))
(define (b x) (- x (- 5 (- 3 1))))
(print (- (a 10) (+ (b 2) (- 5 (- 3 1)))))