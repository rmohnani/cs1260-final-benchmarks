(print
 (+ (+ 0
       (if (if false (read-num) (+ 10 20))
           (if (let ((x (if (if true true true) true (read-num)))) x)
               1
               (read-num))
           (read-num)))
    (+ 0
       (let ((x (let ((y (+ (+ -1
                               (let ((z (if false (read-num) 1))) z))
                            1)))
                  y)))
         x))))
