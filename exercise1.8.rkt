#lang sicp

(define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))

(define (improve guess x)
    (damp x guess))

(define (damp x y)
    (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.0001))

(define (cube a) (* a a a))

(define (cbrt x)
    (cube-iter 1.0 x))

(cube (cbrt 1000))