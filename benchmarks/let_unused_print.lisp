(define (print-count x) (if (< x 0) true (do (print x) (print-count (sub1 x)))))
(let ((x (print-count 30))) (print 0))
