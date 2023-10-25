#lang racket

(define countdown
  (lambda (n)
    (if (= n 0)
        (list 0)
        (cons n (countdown (- n 1))))))

(define a (countdown 10))
;a

(define doublify
  (lambda (g)
    (if (null? g)
        (list)
        (cons (* (first g) 2) (doublify (rest g))))))
;(doublify a)

(define myMap
  (lambda (f g)
    (if (null? g)
        (list)
        (cons (f (first g)) (myMap f (rest g))))))
;(myMap sqrt a)

(define reverse-build-list
  (lambda (n f)
    (if (= n 0)
        (list (f 0))
        (cons (f n) (reverse-build-list (- n 1) f)))))

;(reverse-build-list 5 sqrt)