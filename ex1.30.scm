#lang sicp

(define (sum term a next b)
  (define (iter a result)
    (cond 
	  ((> a b) result)
	  (else (iter 
		  (next a)
		  (+ result (term a))
		  ))
	  ))
  (iter a 0))

(define (x y) y)
(define (inc x) (+ x 1))
(sum x 0 inc 10)
