#lang sicp

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle) 
    (if (not (> (abs angle) 0.01))
        angle
        (p (sine (/ angle 3.0)))))

(sine (/ 3.14159 6)) ;;; 30deg