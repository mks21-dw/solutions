#lang racket

(define randList
  (lambda (n maxValue)
    (build-list n
                (lambda (x)
                  (random maxValue)))))

(define g (randList 20 50))
(display "list: ")
g
(define evens (filter even? g))
(display "evens: ")
evens

(display "even sum: ")(foldl + 0 evens)

;to count, add 1 to the preivous return value in foldl
(display "amount of even numbers: ")
(foldl (lambda (value previous) (+ 1 previous)) 0 evens)
