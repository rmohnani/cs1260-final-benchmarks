(define (f x y z) (if true (if x (+ 4 5) z) (if y (+ 10 20) (+ 5 6))))

(print (f true false (read-num)))