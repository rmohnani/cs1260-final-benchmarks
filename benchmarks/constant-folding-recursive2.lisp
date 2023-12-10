(define (factorial n)
  (if (< n 1)
      1
      (+ (factorial (- n 1)) 3)))

(define (test-recursive-constant-folding n)
  (factorial n))

(print (test-recursive-constant-folding 5))