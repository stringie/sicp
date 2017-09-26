#lang sicp

(define (iter-expt b n) 
    (f 1 b n))
(define (f a b n) 
    (cond ((= n 0) a)
          ((even? n) (f a (* b b) (/ n 2)))
          (else (f (* a b) b (- n 1)))))

(define (even? n) 
    (= (remainder n 2) 0))

(iter-expt 3 3)

(#%provide iter-expt even?)