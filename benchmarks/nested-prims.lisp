(define (f) (+ 2 2))
(print
    (+ 
        (f)
        (if 
            (< (add1 5) (add1 6))
            (let ((x 1)) (
                let ((y 2)) (+ (add1 y) (- (sub1 1) 
                    (if (= (if (= 1 1) 5 6) 5) 
                        0 
                        (read-num)
                    )
                ))
            ))
            (read-num)
        )
    )
)