(define (add x y) (+ x y))
(define (double a b) (+ (add a b) (add a b)))
(define (l m n) (+ (double m n) (add m n)))

(let ((x 2))
  (let ((y 3))
    (print (l x y))))