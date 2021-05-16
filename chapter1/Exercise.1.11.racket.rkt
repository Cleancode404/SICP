#lang racket
;exercise 11

;recursive process
(define (f_recursive n)
  (if (< n 3)
      n
      (+ (f_recursive (- n 1))
         (* 2 (f_recursive(- n 2)))
         (* 3(f_recursive (- n 3))))) 

;check output
;(f_recursive 3)
(f_recursive 4)


;iterative process
(define (f_iterative n)
  (f_iter 2 1 0 0 n))

(define (f_iter a b c i n)
  (if (= i n)
      c
      (f_iter (+ a (* 2 b) (* 3 c)) ; new a
                 a                 ; new b
                 b                 ; new c
                 (+ i 1)
                 n)))

(f_iter 2 1 0 0 4)