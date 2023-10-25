#lang racket


(define sumList
  (lambda (nums)
    (if (null? nums)
        0
        (+ (first nums) (sumList (rest nums))))))


(define numElements
  (lambda (g)
    (if (null? g)
        0
        (+ 1 (numElements (rest g))))))

(define count
  (lambda (value nums)
    (if (null? nums)
        0
        (if (= value (first nums))
            (+ 1 (count value (rest nums)))
            (count value (rest nums))))))

(define listMin
  (lambda (g currentMin)
    (if (null? g)
        currentMin
        (if (< (first  g) currentMin)
            (listMin (rest g) (first g))
            (listMin (rest g) currentMin)))))


;useful for testing
(define g (build-list 10 (lambda (n) (random 100))))

g
(sumList g)
(numElements g)
(count 2 g)
(count (first g) g)
(listMin g +inf.0)


