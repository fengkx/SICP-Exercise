#lang sicp

(define (f-recursive n)
  (if (< n 3)
  n
  (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(f-recursive 2)
(f-recursive 3)
(f-recursive 4)


(define (f-iter n)
  (define (iter n1 n2 n3 count)
    (cond ((= count 0) n1)
        ((= count 1) n2)
        ((= count 2) n3)
        (else (iter n2 n3 (+ n3 (* 2 n2) (* 3 n1)) (- count 1)))
        ))
  (iter 0 1 2 n))

(f-iter 2)
(f-iter 3)
(f-iter 4)

;(iter 0 1 2 3)
;(iter 1 2 4 2)
;(iter 2 4 11 1)
;(iter 4 11 x 0)