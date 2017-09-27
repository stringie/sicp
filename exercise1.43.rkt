#lang sicp

(#%require "exercise1.42.rkt")

(define (repeated procedure x) 
    (cond ((= x 1) procedure)
          (else (compose procedure (repeated procedure (dec x))))))

(define (square x) (* x x))

((repeated square 4) 2)