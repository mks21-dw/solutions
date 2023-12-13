#lang racket

(define listy (build-list 5 (lambda (c) (random -20 20))))
listy

(define filterFactors
  (lambda (a g)
    (filter (lambda (n)
              (= 0 (remainder n a)))
            g)))

(filterFactors 3 listy)

(foldl (lambda (value previous)
         (and (> value 0) previous))
       #t
       listy)

(define multipleList
  (lambda (n a)
    (if (= 1 n)
        (list a)
        (cons (* n a) (multipleList (- n 1) a)))))
(define m (multipleList 5 3))
m

(define mergeLists
  (lambda (a b)
    (if (null? a)
        (list)
        (cons (+ (first a) (first b))
              (mergeLists (rest a) (rest b))))))

(mergeLists listy m)