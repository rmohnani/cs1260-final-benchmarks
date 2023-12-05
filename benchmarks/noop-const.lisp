(define (add-left x) (+ 0 x))
(define (iterate n start)
  (if (zero? n)
      start
      (iterate (- n 1) (add-left start))))

(print (iterate 1048576 1))
