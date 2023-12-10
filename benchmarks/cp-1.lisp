(define (add12 a) (+ a 12))

(let ((x 5))
    (if true 
        (if (= (add1 x) (sub1 (sub1 (sub1 9))))
            (let ((x 2))
                (add1 (add12 (sub1 x))))
            (zero? x))
        (if (= x (add1 (sub1 (add1 4))))
            (let ((y 4))
                (if (zero? 4)
                    (add12 x)
                    (add12 (sub1 y))))
            (let ((x 5)) 
                (if (= x 5) 
                    (+ (let ((y 3)) (add1 y)) 
                        (if (= 12 12) 
                                10 
                                (- 3 (if 
                                        false 
                                        (sub1 (+ 3 (add1 12)))
                                        2)
                                )
                        )) 
                    (sub1 6))))))