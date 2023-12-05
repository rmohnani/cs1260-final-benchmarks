(define (double n)
  (+ n n))

(define (triple n)
  (+ n (+ n n)))

(if (< (double 10) (triple 7))
  (print 1)
  (print 2))