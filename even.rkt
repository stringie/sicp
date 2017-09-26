#lang sicp

(define (even? x) 
    (= (remainder x 2) 0))

(#%provide even?)