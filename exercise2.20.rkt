#lang sicp

;the code in the second conditional uses the fact that an
;even + even = even and odd + odd = even, so only when the numbers
;are of the same parity do the get added to the list since
;even + odd = odd or odd + even = odd

(define (same-parity . l) 
    (define (iter first lst) 
        (cond [(null? lst) nil]
              [(= (remainder (+ (car lst) first) 2) 0) 
                        (cons (car lst) (iter first (cdr lst)))]
              [else (iter first (cdr lst))]))
    (iter (car l) l))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)