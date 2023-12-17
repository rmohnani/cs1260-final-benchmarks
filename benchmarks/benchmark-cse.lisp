(define (sum-to x)
  (if (= x 0) 0
    (+ x (sum-to (sub1 x)))))
(let ((x (read-num)))
  (print (+ (+ (+ (- (sum-to x) (+ (sum-to x) (sum-to x))) (+ (sum-to x) (+ (sum-to x) (sum-to (add1 x))))) (sum-to x)) (sum-to x))))
