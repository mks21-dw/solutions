#lang racket

;==============================
;QUESTION 0
(define rollList
  (lambda (n)
    (build-list n (lambda (s)
                    (random 1 11)))))

;Rolls will be usfull for testing later fucntions
(define rolls (rollList 6))
(display "rolls: ") rolls

;==============================
;QUESTION 1
(define filterRolls
  (lambda (evens g)
    (if evens
      (filter even? g)
      (filter odd? g))))

;Test code, leave alone
(define evens (filterRolls #t rolls))
(define odds (filterRolls #f rolls))
(display "even values: ")
evens
(display "odd values: ")
odds

;==============================
;QUESTION 2
;use foldl to set each variable correctly
(define evenTotal (foldl + 0 evens))
(define oddTotal (foldl + 0 odds))
(display "even total: " ) evenTotal
(display "odd total: ") oddTotal

;==============================
;QUESTION 3
(define losingRoll
  (lambda (failValue g)
    (foldl (lambda (value previous)
              (or (<= value failValue) previous))
            #f
            g)))

;test code, leave alone
(display "even losing roll: ")(losingRoll 2 rolls)
(display "odd losing roll: ")(losingRoll 1 rolls)


;==============================
;QUESTION 4
(define getScore
  (lambda (evens g)
  ;(display g)
    (if evens
        (if (losingRoll 2 g)
            0
            (foldl + 0 (filterRolls evens g)))
        (if (losingRoll 1 g)
            0
            (foldl + 0 (filterRolls evens g))))))

; Note: while rolls is based on an even number of rolls
; these tests are just to make sure the calculations work.
(display "even score: ")(getScore #t rolls)
(display "odd score: ")(getScore #f rolls)

;==============================
;QUESTION 6
(define playGame
  (lambda (numRolls)
    (getScore (even? numRolls) (rollList numRolls))))

;test code, leave alone
(display "game with 6  rolls: ")(playGame 10)
(display "game with 5 rolls: ")(playGame 9)
