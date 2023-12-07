(define (double a) (+ a a))
(define (f x y)
  (let ((sum (+ x y)))
  (let ((difference (- x y)))
    (+ (double sum) (double difference)))))

(print (f 10 5))
