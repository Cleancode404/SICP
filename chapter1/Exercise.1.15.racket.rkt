#lang racket
;exercise 1.15

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;test program and check output
(cube 5)

(sine 12.15) ;takes 5 steps to compute and order of growth is o(log(x))
(p (sine 4.05))
(p (p (sine 1.35)))
(p (p (p (sin 0.15))))
(p (p (p (p (sin 0.05)))))
(p (p (p (p (p 0.05)))))

