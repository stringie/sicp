#lang sicp

(define (factorial n) 
    (fact-iter 1 1 n))

(define (fact-iter product count n) 
    (if (> count n)
        product
        (fact-iter (* product count)
                   (+ count 1)
                   n)))

(factorial 3)