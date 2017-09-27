#lang sicp

(#%require "exercise1.43.rkt")

(define dx 0.00001)
(define (smooth function) 
    (lambda (x) (/ 
                    (+ 
                        (function (- x dx))
                        (function x)
                        (function (+ x dx))) 
                    3)))

(define (n-fold-smooth n) 
    (repeated smooth n))