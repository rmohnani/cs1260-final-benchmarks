(define (calculation n)
    (if (= n 0) 0
        (+
            (calculation (- n 1))
            (+ (+ 1 -1) (+ (+ 2 3) (+ 1 5))))
    )
)

(print (calculation 100))
