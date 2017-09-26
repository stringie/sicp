#lang sicp

;;;simpsons h/3(y 0 + 4y 1 + 2y 2 + 4y 3 + 2y 4 + · · · + 2y n −2 + 4y n −1 + y n ),

(define (sum term a next b) 
    (if (> a b)
        0
        (+ (term a)
            (sum term (next a) next b))))

(define (cube a) (* a a a))
(define (simpsons-rule f a b n) 
     (define h (/ (- b a) n))
     (define (y-term k) (f (+ a (* k h))))
     (define (skip-two x) (+ x 2))
     (* (/ h 3.0) (+ a
                     (* 4 (sum y-term 1 skip-two (- n 1)))
                     (* 2 (sum y-term 2 skip-two (- n 2)))
                     (y-term n))))

(simpsons-rule cube 0 1 100)