(define (x y z) (+ y z))
(define (y x z) (+ x (+ z 1)))
(print (let ((x 1)) (let ((y 2)) (let ((z 3)) (x (y x z) y)))))