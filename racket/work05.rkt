#lang racket

(define perimFromArea
  (lambda (area)
    (* 4 (sqrt area))))
(display "20: ")
(perimFromArea 25)
(display "12.649110640673518: ")
(perimFromArea 10)

(define cost
  (lambda (base rate)
    (+ base (* base rate))))
(display "12.5: ")
(cost 10 0.25)

(define groupCost
  (lambda (students teachers adults)
    (+ (* students (cost 5 0.5))
       (* teachers (cost 10 0.75))
       (* adults (cost 10 1)))))
(display "330.0: ")
(groupCost 34 2 2)
