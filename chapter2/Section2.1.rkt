#lang racket
;chapter 2
;2.1.1 example: arithmetic operations for rational numbers

(define (add-rat x y)
  (make-rat (+ (* (numer x ) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))


(define (sub-rat x y)
  (make-rat (- (* (numer x ) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x ) (denom y))
            (* (numer x) (denom y))))


(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))


(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (make-rat n d) (cons n d))

(define (numer x) (car x))

(define (denom x) (cdr x))


(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


;check output

(define one-half (make-rat 1 2))
(print-rat one-half)
(newline)
;pairs

(define x (cons 1 2))
(car x)

(cdr x)