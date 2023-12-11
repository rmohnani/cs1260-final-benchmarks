(define (f x)
    (if (= x 0)
        x
        (let ((y (sub1 x))) (+ x (f y)))))

(print (f 30))