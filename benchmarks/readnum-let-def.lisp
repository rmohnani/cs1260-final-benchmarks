(define (f n) (+ (read-num) n))
(let ((n (read-num))) (print (+ (f n) (+ (f n) (f n)))))