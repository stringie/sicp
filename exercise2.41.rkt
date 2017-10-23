#lang sicp

(#%require "exercise2.40.rkt")
(#%require "exercise2.33.rkt")

(define (sum-triples-to-s-below-n s n) 
    (filter (lambda (l) (= (accumulate + 0 l) s)) 
            (flatmap (lambda (i) (flatmap (lambda (j) (map (lambda (k) (list k j i))
                                                           (enumerate 1 (- j 1)))) 
                                          (enumerate 1 (- i 1)))) 
                     (enumerate 1 n))))

(sum-triples-to-s-below-n 20 10)
