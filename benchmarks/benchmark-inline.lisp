(define (f x) (+ x 2))
(print (+ (+ (+ (+ (f (read-num)) (f (read-num))) (f (read-num))) (f (read-num))) (f (read-num))))