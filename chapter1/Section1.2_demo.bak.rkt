#lang racket
;Section 1.2 Procedures and the Process they generate
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;linear recursive process for computing 6!
(factorial 6)




;another approach with linear iterative process
(define (factorial n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial 6)