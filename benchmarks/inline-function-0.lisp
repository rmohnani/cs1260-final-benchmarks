(define (is-even n)
  (if (= n 0)
    true
    (is-odd (sub1 n))))

(define (is-odd n)
  (if (= n 0)
    false
    (is-even (sub1 n))))

(print (is-even 5))