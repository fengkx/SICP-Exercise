#lang sicp
(define (SQUARE X ) (* X X))
(define (average x y) (/ (+ x y) 2))
(define (abs x) (if (< x 0) (- 0 x) x))

(define (good_enough? guess x)
  (< (abs (- (SQUARE guess) x)) 0.001))

(define (good_enough?improve guess x)
  (< (abs (-(improve guess x) guess)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt_iter guess x)
  (if (good_enough? guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (sqrt x)
  (sqrt_iter 1 x))

(sqrt 4)
