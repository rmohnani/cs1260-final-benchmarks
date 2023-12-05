(define (longest-increasing-sublist lst curr last max)
  (if (empty? lst)
      max
      (if (< last (left lst))
          (let ((curr (+ (left lst) curr))) (longest-increasing-sublist (right lst) curr (left lst) (if (< max curr) curr max)))
          (longest-increasing-sublist (right lst) 0 0 max))))

(define (input-list) 
(pair 12 (pair 11 (pair 53 (pair 16 (pair 91 (pair 96 (pair 31 (pair 63 (pair 5 (pair 36 (pair 75 (pair 8 (pair 56 (pair 70 (pair 34 (pair 73 (pair 43 (pair 81 (pair 60 (pair 38 (pair 78 (pair 29 (pair 79 (pair 27 (pair 100 (pair 83 (pair 1 (pair 46 (pair 68 (pair 26 (pair 69 (pair 21 (pair 50 (pair 40 (pair 58 (pair 41 (pair 84 (pair 4 (pair 92 (pair 19 (pair 72 (pair 42 (pair 80 (pair 94 (pair 51 (pair 64 (pair 7 (pair 74 (pair 32 (pair 65 ())
    ))))))))))))))))))))))))))))))))))))))))))))))))))
(print (longest-increasing-sublist (input-list) 0 0 0))