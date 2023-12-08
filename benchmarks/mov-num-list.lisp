(define (mov-num x) (let ((u x)) (let ((v u)) (let ((y v)) y))))
(define (make-list n) (if (= n 0) () (pair (mov-num n) (make-list (- n 1)))))
(make-list 8000)
