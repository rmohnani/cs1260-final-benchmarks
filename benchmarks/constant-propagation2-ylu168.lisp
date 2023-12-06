(define (calculation)
  (let ((x 10))
    (let ((z (+ x 5)))
      (let ((w 15))
        (if (= z w)
            (let ((a 30)) 
              (let ((b 25)) 
                (+ b a))) 
            100)))))

(define (constant-sum n)
  (if (= n 0)
      0
      (+ (calculation) (constant-sum (- n 1)))))

(print (constant-sum 100000))