#lang racket
(define radiusFromVolume
  (lambda (volume)
    (expt (/ (* 3 volume)
             (* 4 pi))
          (/ 1 3))))
;test case
(display "expected 9.847450218426964: ")
(radiusFromVolume 4000)

(define getOnesDigit
  (lambda (n)
    (remainder n 10)))
;test cases
(display "expected 7: ")
(getOnesDigit 7)
(display "expected 2: ")
(getOnesDigit 4132)

(define removeOnesDigit
  (lambda (n)
    (quotient n 10)))
;test cases
(display "expected 0: ")
(removeOnesDigit 7)
(display "expected 413: ")
(removeOnesDigit 4132)

(define getTensDigit
  (lambda (n)
    (remainder (quotient n 10) 10)))
(display "expected 0: ")
(getTensDigit 7)
(display "exptected 3: ")
(getTensDigit 4132)

(define getNthDigit
  (lambda (n digit)
    (remainder
     (quotient n
               (expt 10 (- digit 1)))
     10)))
(display "expected 7: ")
(getNthDigit 7 1)
(display "expected 3: ")
(getNthDigit 4132 2) 
(display "expected 1: ")
(getNthDigit 4132 3)

