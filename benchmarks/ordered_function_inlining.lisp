(define (addN n x) (+ n x))
(define (mulFour n) (addN n (addN n (addN n n))))
(do
    (print (mulFour (mulFour (mulFour 3))))
    (newline)
    (print (addN 1 (mulFour (mulFour 3))))
    (newline)
    (print (mulFour (mulFour (mulFour (mulFour (mulFour (mulFour 1)))))))
)
