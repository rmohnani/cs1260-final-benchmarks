(define (part n m)
    (if (= n m) 
        (+ 1 (part n (sub1 m)))
        (if (= m 0)
            0
            (if (< n 0)
                0
                (if (= n 0)
                    1
                    (if (= m 1)
                        1
                        (+ (part n (sub1 m)) (part (- n m) m))
                    )
                )
            )
        )
    )
)

(print (part 32 10))
