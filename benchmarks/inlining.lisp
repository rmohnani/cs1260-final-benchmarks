(define (f x y) (+ x y))

(print (let ((x 2))
  (let ((y 3))
    (do (f y x) (f x y) (f x x) (f y y)))))
