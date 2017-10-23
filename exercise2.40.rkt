#lang sicp

(#%require "exercise2.33.rkt")
(#%require "exercise1.33.rkt")

(define (make-pair-sum pair) 
    (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum? pair) 
    (prime? (+ (car pair) (cadr pair))))

(define (flatmap proc seq) 
    (accumulate append nil (map proc seq)))

(define (prime-sum-pair n) 
    (map make-pair-sum 
        (filter prime-sum? (flatmap
                            (lambda (i)
                                (map (lambda (j) (list i j))
                                     (enumerate 1 (- i 1))))
                            (enumerate 1 n)))))

;;; (prime-sum-pair 4)

(define (remove item seq) 
    (filter (lambda (x) (not (= x item)))
        seq))

(define (permutations s) 
    (if (null? s)
        (list nil)
        (flatmap (lambda (x) 
                    (map (lambda (p) (cons x p))
                         (permutations (remove x s))))
                 s)))

;;; (permutations (list 1 2 3))

(define (unique-pairs n)
  (flatmap (lambda (j) (map (lambda (i) (list j i))
                            (enumerate 1 (- j 1)))) 
           (enumerate 1 n)))

;;; (unique-pairs 4)

(#%provide flatmap permutations unique-pairs remove)