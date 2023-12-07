(define (f x) (+ x 10))
(print (+ (f (read-num)) (+ (f (read-num)) (+ (f (read-num)) (+ (f (read-num)) (+ (f (read-num)) (f (read-num))))))))