#lang sicp

(#%require "exercise2.33.rkt")

(define (horner-eval x coefficient-sequence)
    (accumulate (lambda (this-coeff higher-terms) (+ this-coeff (* x higher-terms))) 
                0 
                coefficient-sequence))

(horner-eval 2 (list 1 2 3 4 5)) ;; 1*1 + 2*2 + 3*4 + 4*8 + 5*16