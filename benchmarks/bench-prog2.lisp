(define (nthAdd1 x) (if (= 0 x) 0 (add1 (nthAdd1 (- x 1)))))
(define (compute z)
    (if (= z 0) 0
        (+
            (compute (- z 1))
            (nthAdd1 10000))
    )
)

(print (compute 10))