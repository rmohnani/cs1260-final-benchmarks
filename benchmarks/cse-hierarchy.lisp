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


(let ((x (read-num)))
  (let ((y (- (read-num) (fact 3))))
    (do 
      (println (fact 10))
      (if (< 10 (fact 10))
        (if (< y 11)
          (do
            (println (< x y))
            (println (- (fact y) (fact x)))
            (println (- (- (fact y) (fact x)) (fact 10))))
          (println (+ (- (fact y) (fact x)) 9)))
        (do
          (println (- (fact y) (fact x)))
          (println (= (fact 10) 200)))))))