(define (even n) (if (= n 0) true (odd (- n 1))))
(define (odd n) (if (= n 0) false (even (- n 1))))

(do
    (print (even 27))
    (newline)
    (print (even 28))
)

