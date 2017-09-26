#lang sicp

(define (pascal-triangle row col) 
    (cond ((or (= row 1) (= col 1) (= col row)) 1)
          (else (+ (pascal-triangle (- row 1) (- col 1))
                   (pascal-triangle (- row 1) col)))))
                   

(pascal-triangle 5 3)