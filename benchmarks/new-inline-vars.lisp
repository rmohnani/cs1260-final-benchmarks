(define (foo x y) (+ x y))
(print (+ (+ (foo (+ 2 3) (foo 4 5)) (foo (foo 1 2) (foo 3 4))) (foo (foo 6 7) (foo 8 9))))