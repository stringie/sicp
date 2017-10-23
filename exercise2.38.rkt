#lang sicp

(#%require "exercise2.33.rkt")

(define (fold-left op initial sequence) 
    (define (iter result rest) 
        (if (null? rest) 
            result
            (iter (op result (car rest)) (cdr rest))))
    (iter initial sequence))

(fold-left - 0 (list 1 2 3))
(accumulate - 0 (list 1 2 3))
;;; (accumulate list nil (list 1 2 3))
;;; (fold-left list nil (list 1 2 3))

(define fold-right accumulate)
(#%provide fold-left fold-right)