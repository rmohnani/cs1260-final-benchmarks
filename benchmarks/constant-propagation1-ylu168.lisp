(define (constant-sum n)
  (if (= n 0)
      0
      (+ (+ 1 (+ 1 (+ 1 1))) (constant-sum (- n 1)))))

(print (constant-sum 100000))