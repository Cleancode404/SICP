#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -2)
;function a-plus-abs-b takes in two arguments a and b,
; if b is greater than 0, compute a + b
; if b is less than 0, computer a + (-b) (its absolute value)