#lang sicp

(#%require "exercise2.33.rkt")

(define (count-leaves tree) 
    (accumulate + 0 (map (lambda (x) 1) (enumerate-tree tree))))

;;; (count-leaves (list 1 (list 2 3 4 (list 5) 6) (list (list 7)) 8 9))