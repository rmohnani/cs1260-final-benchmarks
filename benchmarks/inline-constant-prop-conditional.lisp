(define (check x) (if (= x 0) 100 200))
(define (addAndSubtract x y) (+ x (- y 3)))

(define (process x)
    (let ((result1 (check x)))
        (let ((result2 (addAndSubtract x 5)))
            (+ result1 result2))))

(print (process 0))
