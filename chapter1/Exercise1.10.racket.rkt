#lang racket
;Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x(- y 1))))))

;What are the values of the following experssions?
(A 1 10) ;1024

(A 2 4)  ;65536

(A 3 3)  ;65536
