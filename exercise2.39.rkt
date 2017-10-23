#lang sicp

(#%require "exercise2.38.rkt")

(define (reverse sequence) 
    (fold-right (lambda (x y) (append y (list x))) nil sequence))
(define (reversel sequence) 
    (fold-left (lambda (x y) (cons y x)) nil sequence))