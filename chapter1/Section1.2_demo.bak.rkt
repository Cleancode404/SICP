#lang racket
;Section 1.2 Procedures and the Process they generate
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;linear recursive process for computing 6!
(factorial 6)




;another approach with linear iterative process
(define (factorials n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(factorials 6)

;1.2.2 tree recursion
;fibonacci numbers
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))



;another fibonacc approach
(define (fibs n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1 ))))



(define (count-change amount) (cc amount 5))
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination
                         kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))


;1.2.3 orders of growth
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;test program and check output
(cube 5)

(sine 12.15) ;takes 5 steps to compute

(sine 0.21205)



;1.2.4 exponentiation
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(define (expts b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0 )
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))

