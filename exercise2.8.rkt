#lang sicp

(#%require "exercise2.7.rkt")

(define (sub-interval x y) 
    (make-interval (- (lower-bound x) (lower-bound y))
                   (- (upper-bound x) (upper-bound y))))

(sub-interval (make-interval 5 10) (make-interval 2 4))