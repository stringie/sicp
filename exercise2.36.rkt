#lang sicp

(#%require "exercise2.33.rkt")

(define (accumulate-n op initial seqs) 
    (if (null? (car seqs))
        nil
        (cons (accumulate op initial (map car seqs))
              (accumulate-n op initial (map cdr seqs)))))

;;; (accumulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))

(#%provide accumulate-n)