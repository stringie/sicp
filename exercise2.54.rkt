#lang sicp

(define (memq item x)
    (cond ((null? x) false)
          ((eq? item (car x)) x)
          (else (memq item (cdr x)))))
          
(define (equal? a b)
  (or (and (null? a)
           (null? b))
      (and (symbol? a)
           (symbol? b)
           (eq? a b))
      (and (list? a)
           (list? b)
           (equal? (car a) (car b))
           (equal? (cdr a) (cdr b)))))
