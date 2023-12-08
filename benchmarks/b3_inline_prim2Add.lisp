(define (f x y) (+ x y))
(define (g a b) (+ (f a b) (f a b)))
(define (h i j) (+ i j))
(define (l m n) (+ (g m n) (h m n)))


(let ((x 2))
  (let ((y 3))
    (print (l x y))))