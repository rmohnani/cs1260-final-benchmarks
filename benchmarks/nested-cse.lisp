(define (mult a b) (if (= a 0) 0 (+ b (mult (sub1 a) b))))
(print 
    (let 
        ((x 2)) 
        (let
            ((y 3))
            (mult 
                (+ 
                    (mult (+ (add1 x) y) (+ (add1 x) y)) 
                    (mult (+ (add1 x) y) (+ (add1 x) y))
                ) 
                (mult (+ (add1 x) y) (+ (add1 x) y))
            )
        )
    )
)