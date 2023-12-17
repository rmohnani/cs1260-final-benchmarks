(define (double n)
    (+ n n)
)

(define (constant-prop n)
  (if (= n 0) 
  	0
  	(if (< n 10000)
		(+ (double n) (constant-prop (- n 1)))
		(+ (- n 10000) (constant-prop (- n 1)))
	)
  )
)

(print (constant-prop 100000))