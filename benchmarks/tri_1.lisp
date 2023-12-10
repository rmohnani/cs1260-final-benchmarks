(define (tri x) 
    (if (= x 0) 0 
    (+
        x
        (tri (sub1 x)))))

(print (pair (tri 1) (pair (tri 2) (pair (tri 3) (pair (tri 4) (pair (tri 5) (pair (tri 6) (tri 7))))))))
