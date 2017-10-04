#lang sicp

(define (cons x y) 
    (lambda (m) (m x y)))
(define (car z) 
    (z (lambda (p q) p)))
(define (cdr z) 
    (z (lambda (p q) q)))

(define (p x y) (cons x y))
(car (p 1 2))
(cdr (p 1 2))