(define (add-list lst)
  (if (empty? lst)
      0
      (+ (left lst) (add-list (right lst)))))

(define (sum-double n)
  (if (< n 1)
      0
      (+ (+ n n) (sum-double (- n 1)))))

(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(define (recursive-case a b)
  (let ((result (+ (add-list a) (sum-double b))))
    (if (< result 100)
        (recursive-case (pair result a) (+ (fibonacci b) 1))
        result)))

(print (recursive-case (pair 1 (pair 2 ())) 3))