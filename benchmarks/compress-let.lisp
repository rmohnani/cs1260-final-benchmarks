(define (add2 x y) (+ x y))

(
  let ((x (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 0))))))))))))))
  (
    let ((y (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 (sub1 13))))))))))))))
    (print (add2 x y))
  )
)
