(define (getRight x) 
    (if (pair? x) 
        (getRight (right x))
        x))

(print (getRight (pair 1 (pair 2 (pair 3 (pair 4 (pair 5 (pair 6 (pair 7 (pair 8 (pair 9 (pair 10 (pair 11 (pair 12 (pair 13 14)))))))))))))))