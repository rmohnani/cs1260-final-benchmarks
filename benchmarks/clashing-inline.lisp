(define (sub2 x y) (- x y))
(define (add2 x y) (+ x y))
(define (add3 x y z) (+ x (+ y z)))
(define (sub3 x y z) (- x (- y z)))

(
  let ((x 2))
  (
    let ((y 3))
    (
        let ((z 4))
        (print (add2 (add3 x y z) (sub3 z y x)))
    )
  )
)
