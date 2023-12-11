(define (add x) (+ x 5))

(define (test-inlining a b) (let ((res1 (add a))) (let ((res2 (add b))) (+ res1 res2))))

(print (test-inlining 3 4))