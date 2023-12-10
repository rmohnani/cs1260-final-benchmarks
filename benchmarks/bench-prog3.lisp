(define (nthAdd1 x) (if (= 0 x) 0 (add1 (nthAdd1 (- x 1)))))
(define (double x y) (+ (nthAdd1 x) (nthAdd1 y)))
(print 
    (let ((x 5000))
        (let ((y 5000)) 
            (do
                (double x y)
                (double y x)))))