(define (calculation n)
    (if (= n 0) 0
        (+ (+ 1 -1) (+ (+ 2 3) (+ 1 (+ 5 (calculation (- n 1))))))
    )
)

(print (calculation 100))
