(define (allEqual x y z) (if (= x y) (= x z) false))
(define (ifEqualOne x y) (if (= x y) 1 0))

(do
    (print (allEqual 1 (ifEqualOne 0 1) (ifEqualOne 0 1)))
    (newline)
    (print (allEqual 1 (ifEqualOne 1 1) (ifEqualOne 1 1)))
    (newline)
    (print (allEqual 1 (ifEqualOne 1 (ifEqualOne (ifEqualOne 1 1) 1)) (ifEqualOne 1 1)))
)