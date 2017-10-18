#lang sicp

(define y (list (list 1 2) (list 3 4)))

(define (fringe x) 
    (cond [(not (pair? x)) (list x)] 
          [(null? (cdr x)) (fringe (car x))]
          [else (append (fringe (car x)) (fringe (cdr x)))]
          ))

(fringe y)

(list 1 2 3 4)