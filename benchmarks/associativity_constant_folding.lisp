(define (f x) (+ 1 (+ (read-num) (+ 1 (+ (read-num) (+ 1 (+ (read-num) (+ 1 (+ (read-num) (+ 1 (+ (read-num) (+ 1 (+ (read-num) 1)))))))))))))
(define (g x) (+ 1 (+ (read-num) (- 1 (+ (read-num) (+ 1 (+ (read-num) (- 1 (+ (read-num) (+ 1 (+ (read-num) (- 1 (+ (read-num) 1)))))))))))))

(print (+ (f 0) (g 0)))