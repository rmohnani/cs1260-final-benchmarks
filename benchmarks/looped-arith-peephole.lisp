(define (sub a b) (- a b))
(define (deep-sub a b) (sub a b))
(define (deeper-sub a b) (deep-sub a b))

(define (loop n)
    (let ((out (deeper-sub n (+ n (+ n (- n 1))))))
        (if (= n 0)
            0
            (deep-sub out (loop (- n 1))))))

(print (loop 100))