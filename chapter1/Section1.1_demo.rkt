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

;1.1.7 Example: square roots by Newton's method
(define (sqrt x)
  (the y (and (>= y 0)
              (= (square y) x))))


;Newton's method
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x ) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt x )
  (sqrt-iter 1.0 x))

(define (square x) ;miss this in the book but previous section has it
  (* x x))


(sqrt 9)
(sqrt (+ 100 37))

(sqrt (+ (sqrt 2) (sqrt 3)))

(square (sqrt 1000))