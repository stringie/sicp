#lang sicp

(define (map proc l) 
    (if (null? l)
        nil
        (cons (proc (car l)) (map proc (cdr l)))))

(define (square-list items) 
    (if (null? items)
        nil
        (cons (expt (car items) 2) (square-list (cdr items)))))

;;;(square-list (list 1 2 3 4 5))

(define (square-list2 items) 
    (map (lambda (x) (* x x)) items))

;;;(square-list2 (list 1 2 3 4 5))