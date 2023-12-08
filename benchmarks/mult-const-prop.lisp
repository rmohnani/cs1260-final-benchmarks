(define (println x)
  (do
    (print x)
    (newline)))

(define (mult x y) 
    (if (< x 0)
        (- 0 (mult (- 0 x) y))
        (if (= x 0)
            0
            (+ y (mult (- x 1) y)))))

(define (fact n)
    (if (< 0 n)
        (mult n (fact (- n 1)))
        1))


(if (< (fact (+ 5 (add1 (- 9 5)))) 10)
    (do 
      (fact (- (fact 3) (+ 10 (sub1 (fact 10)))))
      (fact (+ (fact 5) (- (mult (+ 5 3) (fact 3)) (add1 (sub1 (add1 (mult 3 -5)))))))
      (mult -200 38))
    (print 
        (do
          (fact (+ (mult 8 (mult 5 2)) (mult -23 3)))
          (let ((x 90))
            (let ((y (- 5 (+ (fact 3) 9))))
              (do 
                (+ x (sub1 (add1 (- x (mult 2 y)))))
                (- y (add1 (sub1 (- (mult 2 (- y 20)) (+ x (fact y))))))
                (add1 (mult (- x y) (+ x y)))
                (mult x (- (add1 y) (+ (sub1 (- (fact (- 3 2)) (+ y (fact 3)))) y))))))
          (fact (+ (sub1 (+ (- 3 -3) (- (mult -2 -2) 5))) 2)))))