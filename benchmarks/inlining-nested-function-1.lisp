(define (f n)
  (+ n 3))

(define (g x)
  (- x 3))

(if (zero? (f (g 0)))
  (print true)
  (print false))