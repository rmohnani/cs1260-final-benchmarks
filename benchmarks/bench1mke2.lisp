(define (nested-let-test a b)
  (let ((x (+ a b)))
    (let ((y (+ x 2)))
    (let ((z (- x 1)))
      (let ((result (if (< y z)
                        (do
                          (print 1)
                          (- y z))
                        (do
                          (print 2)
                          (+ z y)))))
        (= result 3))))))

(print (nested-let-test 5 3))