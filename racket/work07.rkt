#lang racket

(define isBetween
  (lambda (a b c)
    (and
     (> a b)
     (< a c))))

(display "isBetween tests\n")
(display "#t: ")
(isBetween 5 4 6)
(display "#f: ")
(isBetween 3 7 9)
(display "#f: ")
(isBetween 4 4 9)

(define pythTriple
  (lambda (a b c)
    (= (* c c)
       (+ (* a a) (* b b)))))
(display "pythTriple tests\n")
(display "#t: ")
(pythTriple 3 4 5)
(display "#f: ")
(pythTriple 6 7 10)
(display "#t: ")
(pythTriple 4  3 5)
(display "#f: ")
(pythTriple 5 3 4)

(define pythTriple2
  (lambda (a b c)
    (or
     (pythTriple a b c)
     (pythTriple a c b)
     (pythTriple b c a))))
(display "pythTriple2 tests\n")
(display "#t: ")
(pythTriple2 3 4 5)
(display "#f: ")
(pythTriple2 6 7 10)
(display "#t: ")
(pythTriple2 4  3 5)
(display "#t: ")
(pythTriple2 5 3 4)
(display "#t: ")
(pythTriple2 4 5 3)


(define exor
  (lambda (p q)
    (and
     (or p q)
     (not (and p q)))))
(display "exor tests\n")
(display "#f: ")
(exor #true #true)
(display "#t: ")
(exor #true #false)
(display "#t: ")
(exor #false #true)
(display "#f: ")
(exor #false #false)
(display "#t: ")
(exor (> 3 4) (<= 5 6))
