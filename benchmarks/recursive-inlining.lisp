(define (plus1 x) (if (= x 0) 1 (+ 1 (plus1 (- x 1)))))

(print (plus1 100000))
