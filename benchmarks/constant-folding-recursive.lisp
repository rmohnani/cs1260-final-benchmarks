(define (addition a b)
  (+ a b))

(define (subtraction a b)
  (- a b))

(define (test-conditional n)
  (if (< n 5) 
      (addition 1 (subtraction 4 2))
      (subtraction (addition 4 3) 1)))

(print (test-conditional 1))