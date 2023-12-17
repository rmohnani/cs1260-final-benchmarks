(define (constant-function)
  (let ((a 10))
    (let ((b 20))    
        (+ a b))))

(define (compute x)
  (if (= x 0)
      (constant-function)
      x))

(print (compute 0))
