#lang sicp

(#%require "exercise2.7.rkt")

(define (width x) 
    (/ (- (upper-bound x) (lower-bound x)) 2))

(define inter1 (make-interval 3 9))
(define inter2 (make-interval 1 2))
(define inter3 (make-interval 2 5))

(width (add-interval inter1 (add-interval inter2 inter3)))
(newline)
(+ (width inter1) (width inter2) (width inter3))
