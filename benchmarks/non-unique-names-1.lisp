(define (f vname) (+ vname (let ((vname (+ 3 2))) (+ vname 5))))

(print (let ((vname 7)) (f vname)))