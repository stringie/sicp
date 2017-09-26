#lang sicp

(define (multiply a b) 
    (iter-multiply 0 a b))
(define (iter-multiply c a b) 
    (cond ((= b 0) c)
          ((even? b) (iter-multiply c (double a) (halve b)))
          (else (iter-multiply (+ c a) a (- b 1)))))

(define (double x) 
    (+ x x))

(define (halve x) 
    (- x (/ x 2)))

(define (even? x) 
    (= (remainder x 2) 0))

(multiply 5 20)