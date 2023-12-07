(define (compute x)
  (if (= x 10)
      (+ 5 (+ 3 2))
      (- 10 (- 4 2))))

(print (compute 10))