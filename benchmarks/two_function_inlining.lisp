(define (addThree n) (+ 3 n))
(define (mulThree n) (+ n (+ n n)))
(do
    (print (addThree (mulThree (addThree (mulThree (addThree 5))))))
    (newline)
    (print (mulThree (addThree (mulThree (addThree (mulThree 5))))))
    (newline)
    (print (mulThree (mulThree (mulThree (addThree (addThree (addThree (mulThree (mulThree (mulThree 1))))))))))
)