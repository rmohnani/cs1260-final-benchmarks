(define (f x) (if (< 2 3) x (+ x 2)))
(define (g y) (if (= 2 2) y (+ y 2)))
(define (h z) (if (< z 5) z (+ z 2)))

(let ((a 2))
    (print (f (g (h a)))))