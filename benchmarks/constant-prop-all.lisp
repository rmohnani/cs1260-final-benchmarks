(define (is-big x) (if (< x 100) false true))

(let ((x 10))
    (let ((y (+ x (+ x (+ x 77)))))
        (if (is-big y) (print y) (print x))))