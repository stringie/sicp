#lang sicp

(#%require "exercise2.17.rkt")

(define (all-but-last lst) 
    (if (null? (cdr lst)) 
        nil 
        (cons (car lst) (all-but-last (cdr lst)))))

(define (reverse l) 
    (if (null? (cdr l)) 
        (cons (car l) nil) 
        (cons (last-pair l) (reverse (all-but-last l)))))

;(reverse (list 1 2 3 4 5 6 7))

(#%provide reverse all-but-last)