#lang sicp

(#%require "exercise2.18.rkt")

(define x (list (list 1 2) (list 3 4)))

(define (deep-reverse x) 
    (if (pair? x)
        (reverse (map deep-reverse x))
        x))

(deep-reverse x)