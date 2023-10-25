#lang racket
(define a (list 51 2 21 42 46 20))

(display "useful output for questions 1-3\n")
a
(first a)
(rest a)


(display "Question 2: ")
(rest (rest a))
(display "Question 3: ")
(first (rest (rest a)))


(define b (rest a))
(first b)

(display "useful output for questions 4-5\n")
(build-list 5 sqrt)
(build-list 5 (lambda (x) (* x x)))

(display "Question 5: ")
(build-list 5 (lambda (x) (* x x x)))


(display "useful output for questions 7-9\n")
(random)
(random 2)
(random 5 10)

(display "Question 9: ")
(build-list 10 (lambda (x) (random 10 20)))
