#lang sicp

(define (multiply a b) 
    (cond ((= b 0) 0)
          ((even? b) (multiply (double a) (halve b)))
          (else (+ a (multiply a (- b 1))))))

(define (double x) 
    (+ x x))

(define (halve x) 
    (- x (/ x 2)))

(define (even? x) 
    (= (remainder x 2) 0))

(multiply 3 5)