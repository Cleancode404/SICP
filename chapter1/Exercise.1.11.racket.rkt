#lang racket
;exercise 11
;recursive process
(define (f n)
  (if (< n 3)
      n
      (+ (- n 1) (* 2(- n 2)) (* 3(- n 3))) 

(f 2)


;iterative process