#lang racket
;Section 1.2 Procedures and the Process they generate


(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;linear recursive process for computing 6!
(factorial 6)

