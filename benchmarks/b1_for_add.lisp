(define (addFiveForN n x) (if (= n 0) (+ 0 x) (addFiveForN (sub1 n) (add1 (add1 (add1 (add1 (add1 x))))))))
(print (addFiveForN 1000 0))