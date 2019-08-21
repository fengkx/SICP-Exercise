#lang sicp
(define (square x) (* x x))
(define (cube x) (* x x x))
(define (average x y) (/ (+ x y) 2))
(define (abs x) (if (< x 0) (- 0 x) x))

(define (good_enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (good_enough? guess x)
  (< (abs (-(improve guess x) guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (curt_iter guess x)
  (if (good_enough? guess x)
      guess
      (curt_iter (improve guess x) x)))
(define (curt x)
  (curt_iter 1 x))
(curt 8)