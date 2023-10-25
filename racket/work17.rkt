#lang racket

(define nth
  (lambda (n g)
    (if (= 0 n)
        (first g)
        (nth (- n 1) (rest g)))))

(define randElement
  (lambda (g)
    (nth (random (length g)) g)))

(define listy (build-list 10 (lambda (x) (random 100))))

listy
(display "value at index 3: ")(nth 3 listy)
(display "random element: ")(randElement listy)
