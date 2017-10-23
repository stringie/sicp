#lang sicp

(#%require "exercise2.33.rkt")
(#%require "exercise2.36.rkt")

(define (dot-product v w) 
    (accumulate + 0 (map * v w)))

;;; (dot-product (list 1 2 3) (list 3 2 1))

(define (matrix-*-vector m v) 
    (map (lambda (x) (dot-product x v)) m))

;;; (matrix-*-vector (list (list 1 2) (list 3 4)) (list 1 2))

(define (transpose mat) 
    (accumulate-n cons nil mat))

;;; (transpose (list (list 1 2) (list 3 4)))

(define (matrix-*-matrix m n)
  (let ([cols (transpose n)])
    (map (lambda (x) (matrix-*-vector cols x)) m)))