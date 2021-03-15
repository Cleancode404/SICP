#lang racket
;1.1.1 Expression
(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 5)

(+ 2.7 10)

(+ 21 35 12 7)

(* 25 4 12)

(+ (* 3 5)(- 10 6))

(+ (* 3 (+ (* 2 4)(+ 3 5))) (+ (- 10 7) 6))

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

;1.1.2 Naming and the environment;
(define size 2)
(* 5 size)


(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius))

;1.1.3 evaluating combinations
(* (+ 2 (* 4 6))
      (+ 3 5 7))

;1.1.4 compound procedures
(define (square x)(* x x))

(square 21)

(square (+ 2 5))

(square (square 3))

;(+ (square x)(square y))

(define (sum-of-squares x y)
  (+ (square x)(square y)))
(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1)(* a 2)))
(f 5 )

;1.1.5 the substitution model for procedure application
;no code


;1.1.6 Conditional expressions and predicates
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(abs -11) ;output should be 11

