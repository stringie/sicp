#lang sicp

(define (filter predicate sequence) 
    (cond [(null? sequence) nil]
          [(predicate (car sequence)) 
            (cons (car sequence) (filter predicate (cdr sequence)))]
          [else (filter predicate (cdr sequence))]))

;(filter odd? (list 1 2 3 4 5))

(define (accumulate op initial sequence) 
    (if (null? sequence)
        initial
        (op (car sequence) (accumulate op initial (cdr sequence)))))

;;(accumulate + 0 (list 1 2 3 4 5 6 7 8 9 10))

(define (enumerate low high) 
    (if (> low high) 
        nil
        (cons low (enumerate (+ low 1) high))))

;;(enumerate 1 5)

(define (enumerate-tree tree) 
    (cond [(null? tree) nil]
          [(not (pair? tree)) (list tree)]
          [else (append (enumerate-tree (car tree))
                        (enumerate-tree (cdr tree)))]))

;(enumerate-tree (list 1 (list 2 3 4) (list 5) 6 (list (list 7 8) 9)))

;;; (define (sum-odd-squares tree) 
;;;     (accumulate + 0 (map (lambda (x) (* x x)) (filter odd? (enumerate-tree tree)))))

;;; (sum-odd-squares (list 1 (list 2 3) 4 5 (list (list 6) 7) 8))

;;; (define (fib n)
;;;   (if (<= n 2)
;;;       1
;;;       (+ (fib (- n 1)) (fib (- n 2)))))

;;; (define (even-fibs n)
;;;     (accumulate cons nil (filter odd? (map fib (enumerate 1 n)))))

;;; (even-fibs 10)

(define (my-map p sequence) 
    (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

;(my-map (lambda (x) (* x x)) (list 1 2 3))

(define (my-append seq1 seq2)
    (accumulate cons seq2 seq1))

;;; (my-append (list 1 2 3) (list 4 5 6))

(define (my-length sequence) 
    (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

;;; (my-length (list 1 2 3))

(#%provide accumulate filter enumerate enumerate-tree)