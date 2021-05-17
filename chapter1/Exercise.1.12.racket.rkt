#lang racket
;exericse 1.12

;write a procedure that computes elements of Pascal's triangle by means of a recursive process

;approach with row and column. Both start counting from zero

(define (pascal row col)
  (cond ((> col row)
         (error "invalid column value"))
        ((or (= col 0) (= row col))
         1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

;check output
(pascal 2 1)

