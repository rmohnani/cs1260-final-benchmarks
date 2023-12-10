(define (base x) x)

(define (becomes-leaf x) (+ (base x) x))

(define (two-inlines x) (+ (base x) (becomes-leaf x)))

(print (two-inlines 5))