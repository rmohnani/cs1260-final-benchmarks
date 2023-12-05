(define (f x y) (+ x y))
(let ((x (+ 2 (+ 2 (+ 2 + read-num)))))
  (let ((y (+ (- 3 (+ 2 read-num)) (- 4 (+ 5 read-num)))))
    (f y x)))