(define (calc x)
  (+ x (+ 2985 (+ 123 (+ 123 (+ 123 (+ 9348 (+ 11 (+ 22 (+ 33 (+ 44 0)))))))))))
(define (repeat-calc n)
  (if (< n 1)
      0
      (+ (calc n) (repeat-calc (- n 1)))))
(print (repeat-calc 100))
