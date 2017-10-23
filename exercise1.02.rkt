#lang sicp
;;; expression into prefix form

(/ (+ 5 
      4 
      (- 2 
         (- 3 
            (+ 6 
               (/ 4.0 5)))))
    (* 3.0
       (- 6 2)
       (- 2 7)))