#lang sicp

(define (cont-frac n d k) 
    (define (frac a i) 
        (if (> i k)
            a
            (/ (n i) (+ (d i) (frac a (inc i))))))
    (frac 0 1))


;;; (cont-frac 
;;;             (lambda (i) 1.0) 
;;;             (lambda (i) 
;;;      8           (if (= (remainder i 3) 2)
;;;                     (expt 2 (/ (inc i) 3))
;;;                     1)) 
;;;             17)

(#%provide cont-frac)