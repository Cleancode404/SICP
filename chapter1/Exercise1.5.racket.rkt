#lang racket
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;evaluates the expression
;(test 0 (p)) ;would be infinite loop if p is not define.

;Otherwise, output would be 0 if x is 0. Else, output would be y


