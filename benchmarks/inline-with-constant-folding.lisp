(define (zero) 0)
(define (calculation n)
    (if (= n 0) 0
        (+
            (calculation (- n 1))
            (+ (+ (+ 1 (zero)) -1) (+ (+ 2 (+ 3 (zero))) (+ 1 (+ 5 (zero))))))
    )
)

(print (calculation 100))
