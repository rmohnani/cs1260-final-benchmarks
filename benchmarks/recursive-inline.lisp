(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(define (compute x)
  (fibonacci x))

(print (compute 5))
