(define (arithmetic n)
    (if (= n 0)
        (add1 (sub1 (- (+ n 3) 12)))
        2))

(print (arithmetic 0))
