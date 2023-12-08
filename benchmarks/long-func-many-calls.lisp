(define (long-func x y z) 
    (+ 
    (if (= x y) 
    (if (< x z) (- x z) (+ x z)) 
    (if (= y z) 
        (+ x (+ y z)) 
        (if (< y x) (+ y z) x)))
    (if (= x y) 
    (if (< x z) (- x z) (+ x z)) 
    (if (= y z) 
        (+ x (+ y z)) 
        (if (< y x) (+ y z) x))) 
    )

)

(+ (long-func 1 2 3) (+ (long-func 2 2 2) (+ (long-func 0 0 4) (+ (long-func 3 2 1) (+ (long-func 5 4 9) (+ (long-func 3 2 1) (+ (long-func 3 3 3) (+ (long-func 9 4 4) (+ (long-func 1 2 2) (+ (long-func 2 3 3) (+ (long-func 0 0 0) (+ (long-func 4 4 4) (+ (long-func 1 2 3) (+ (long-func 2 2 2) (+ (long-func 0 0 4) (+ (long-func 3 2 1) (+ (long-func 5 4 9) (+ (long-func 3 2 1) (+ (long-func 3 3 3) (+ (long-func 9 4 4) (+ (long-func 1 2 2) (+ (long-func 2 3 3) (+ (long-func 0 0 0) (+ (long-func 4 4 4) (+ (long-func 1 2 3) (+ (long-func 2 2 2) (+ (long-func 0 0 4) (+ (long-func 3 2 1) (+ (long-func 5 4 9) (+ (long-func 3 2 1) (+ (long-func 3 3 3) (+ (long-func 9 4 4) (+ (long-func 1 2 2) (+ (long-func 2 3 3) (+ (long-func 0 0 0) (+ (long-func 4 4 4) (+ (long-func 1 2 3) (+ (long-func 2 2 2) (+ (long-func 0 0 4) (+ (long-func 3 2 1) (+ (long-func 5 4 9) (+ (long-func 3 2 1) (+ (long-func 3 3 3) (+ (long-func 9 4 4) (+ (long-func 1 2 2) (+ (long-func 2 3 3) (+ (long-func 0 0 0) (long-func 4 4 4))))))))))))))))))))))))))))))))))))))))))))))))