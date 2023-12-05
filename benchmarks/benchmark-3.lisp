(define (c x) (* x x))
(define (b x) (if (< (c x) 100) 0 1))
(define (a x) (+ (b x) (b x)))

(let ((y (read-num)))
 (print (a y)))
