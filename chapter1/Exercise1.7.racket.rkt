#lang racket
;trauncated error
;for example: 1000 - 0.001 is approximate to be 1000 because 0.001 is too small

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.1))

(define (small-enough guess x)
  (<=
   (diff (sqr guess) x)
   (diff (sqr (improve guess x)) x)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      (if (small-enough guess x)
          guess
          (sqrt-iter (improve guess x) x))
       (sqrt-iter (improve guess x))))