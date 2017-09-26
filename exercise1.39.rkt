#lang sicp

(#%require "exercise1.37.rkt")

(define (tan x) 
    (cont-frac 
                (lambda (y) (if (= y 1) x (- 0 (* x x)))) 
                (lambda (y) (- (* 2 y) 1))
                20))

(tan 3.14159)