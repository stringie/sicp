#lang sicp
;;; Problem to return sum of squares of largest two numbers from 3 given

(define (square a) (* a a))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (f a b c) 
    (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b c) (< b a)) (sum-of-squares a c))
          ((and (< c a) (< c b)) (sum-of-squares a b))))

(f 1 2 3)