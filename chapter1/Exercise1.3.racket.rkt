#lang racket
(define (sum_square_bigger2 a b c)
( cond
((and (>= a c) (>= b c))
(+ (* a a) (* b b))
)
((and (>= a b) (>= c b))
(+ (* a a) (* c c))
)
(else
(+ (* b b) (* c c))
)
)

)

(sum_square_bigger2 1 2 4) ;output is 4*4 + 2*2 = 20
