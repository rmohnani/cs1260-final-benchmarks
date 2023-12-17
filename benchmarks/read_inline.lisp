(define (f x) (+ x (+ x (+ x (+ x (+ x (+ x (+ x (+ x x)))))))))
(define (g x) (if (< x 10) (+ x (+ x x)) (- 10 (- x (read-num)))))

(print (+ (f 10) (g (read-num))))