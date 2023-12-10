(define (add a b) (+ a b))
(define (subtract a b) (- a b))
(define (increment x) (+ x 1))
(define (decrement x) (- x 1))

(define (compute x)
  (let ((result1 (add x (increment x))))
    (let ((result2 (subtract x (decrement x))))
        (+ result1 result2))))

(print (compute 4))
