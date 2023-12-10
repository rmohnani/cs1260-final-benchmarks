
(define (check x) (if (= x 0) 100 200))
(define (subtract x y) (- x y))

(define (process x)
  (let ((result1 (check x)))
    (let ((result2 (subtract x 5)))
    (+ result1 result2))))

(print (process 0))
