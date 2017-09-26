#lang sicp

(define (rec-f n) 
    (cond ((< n 3) n)
          (else (+ (rec-f (- n 1))
                   (* 2 (rec-f (- n 2)))
                   (* 3 (rec-f (- n 3)))))))


(define (iter-f n) 
    (f 0 1 2 n))
(define (f a b c n) 
    (cond ((< n 0) n)   
          ((= n 0) a)
          ((= n 1) b)
          ((= n 2) c)
          (else (f b c (+ c (* b 2) (* a 3)) (- n 1)))))


(rec-f 5)
(iter-f 5)