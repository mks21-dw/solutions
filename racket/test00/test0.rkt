#lang racket

(define divisible
  (lambda (a b)
    (= 0 (remainder a b))))

(divisible 32 4)
(divisible 32 3)

(define semi
  (lambda (a b c)
    (/ (+ a b c) 2)))

(semi 3 4 5)
(semi 10 3 9)

(define area
  (lambda (a b c)
    (sqrt (+ (semi a b c)
             (- (semi a b c) a)
             (- (semi a b c) b)
             (- (semi a b c) c)))))
(area 3 4 5)
(area 10 3 9)

(define digitSum
  (lambda (n)
    (+ (remainder n 10)
       (quotient n 10))))
(digitSum 51)
(digitSum 27)

(define biconditional
  (lambda (p q)
    (or (and p q)
        (not (or p q)))))
(biconditional #true #true)
(biconditional #false #false)
(biconditional #false #true)
(biconditional #true #false)