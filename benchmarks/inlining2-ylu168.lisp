(define (minus x y) (- x y))
(define (add x y) (+ (minus x -1) (minus y 1)))
(define (fibonacci x)
  (if (< x 2)
      x
      (add (fibonacci (- x 1)) (fibonacci (- x 2)))))
(print (fibonacci 30))