#lang racket
#|QUESTION 0
Flowchart:
A: r0 = 0
B: remainder n 100
C: if r3
D: remainder n 4
|#
(define isLeapYear
  (lambda (year)
    (if (= 0 (remainder year 400))
        #t
        (if (= 0 (remainder year 100))
            #false
            (= 0 (remainder year 4))))))

;You need 4 test cases, define them here
(define leapTest0 2000)
(define leapTest1 1900)
(define leapTest2 2004)
(define leapTest3 2005)

;You do not need to modify this code
(display "leapTest ")(display leapTest0)(display ": ")
(isLeapYear leapTest0)
(display "leapTest ")(display leapTest1)(display ": ")
(isLeapYear leapTest1)
(display "leapTest ")(display leapTest2)(display ": ")
(isLeapYear leapTest2)
(display "leapTest ")(display leapTest3)(display ": ")
(isLeapYear leapTest3)


;==============================
#|QUESTION 1
Flowchart:
A: r0 + small
B: if r2
C: small >= r3
|#
(define tilePossible
  (lambda (big small goal)
    (if (>= (+ (* 5 big) small) goal)
        (>= small (remainder goal 5))
        #false)))

;You need 3 test cases, define them here,
;Leave the big and small variables alone.
;Base your tests on those values
(define big 3)
(define small 2)
(define tileTest0 11)
(define tileTest1 13)
(define tileTest2 18)

(display "tileTest ")(display tileTest0)(display ": ")
(tilePossible big small tileTest0)
(display "tileTest ")(display tileTest1)(display ": ")
(tilePossible big small tileTest1)
(display "tileTest ")(display tileTest2)(display ": ")
(tilePossible big small tileTest2)

;==============================
#|QUESTION 2
Flowchart:
A: n = 2
B: remainder n 3
C: not r3
|#
(define isSmallPrime
  (lambda (n)
    (if (even? n)
        (= n 2)
        (if (= n 3)
            #true
            (not (= 0 (remainder n 3)))))))
;All test cases have been provided
(display "2 :")(isSmallPrime 2)
(display "3 :")(isSmallPrime 3)
(display "4 :")(isSmallPrime 4)
(display "5 :")(isSmallPrime 5)
(display "7 :")(isSmallPrime 7)
(display "9 :")(isSmallPrime 9)
(display "11 :")(isSmallPrime 11)
(display "13 :")(isSmallPrime 13)
(display "17 :")(isSmallPrime 17)
(display "19 :")(isSmallPrime 19)
