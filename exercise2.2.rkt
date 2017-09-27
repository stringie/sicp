#lang sicp

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

(define (midpoint-segment s) 
    (let ([x1 (x-point (start-segment s))]
          [y1 (y-point (start-segment s))]
          [x2 (x-point (end-segment s))]
          [y2 (y-point (end-segment s))])
          (print-point(make-point (/ (+ x1 x2) 2) (/ (+ y1 y2) 2)))))

(define segment (make-segment (make-point 1 2) (make-point -2 3)))

(midpoint-segment segment)