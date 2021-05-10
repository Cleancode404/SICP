#lang racket
;exercise 11

;recursive process
(define (f_recursive n)
  (if (< n 3)
      n
      (+ (- n 1) (* 2(- n 2)) (* 3(- n 3))))) 

;check output
(f_recursive 3)
(f_recursive 4)


;iterative process
(