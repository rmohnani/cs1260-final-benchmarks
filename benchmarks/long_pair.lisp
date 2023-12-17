(define (longPair x) 
    (if (zero? x) 
        0
        (pair x (longPair (sub1 x)))))

(print (longPair 13))