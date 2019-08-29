#lang sicp

(define (sum term a next b)
	 ( if ( > a b ) 
	      0
	      (+ (term a)
		 (sum term (next a) next b))))

(define (cube x) (* x x x))

; n need to be even
(define (integral f a b n )
	 (define h (/ (- b a) n) )
	 (define (inc x) (+ x 1))
	 (define (even? k)
	   (= 0 (remainder k 2)))
	 (define (xk k)
		(+ (* k h) a))
	 (define (term k)
		(* (cond  ((or (= k 0) (= k n)) 1)
			  ((even? k) 2)
			  (else 4))
		   (f (xk k))
		)) 
	 (* (/ h 3)
	    (sum term 0 inc  n )))
(integral cube 0 1 10)
(integral cube 0 1 100)
(integral cube 0 1 1000)
