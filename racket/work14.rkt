#lang racket
(define rollList
  (lambda (n)
    (build-list n (lambda (s)
                    (random 1 (+ 1 diceSides))))))

(define filterRolls
  (lambda (evens g)
    (if evens
      (filter even? g)
      (filter odd? g))))

(define losingRoll
  (lambda (failValue g)
    (foldl (lambda (value previous)
              (or (<= value failValue) previous))
            #f
            g)))

(define getScore
  (lambda (evens g)
  ;(display g)
    (if evens
        (if (losingRoll evenFail g)
            0
            (foldl + 0 (filterRolls evens g)))
        (if (losingRoll oddFail g)
            0
            (foldl + 0 (filterRolls evens g))))))

(define playGame
  (lambda (numRolls)
    (getScore (even? numRolls) (rollList numRolls))))
;=============================================================
;You don't need to modify anything above this line


;You should modify these variables to test different
;versions of the game.
(define trials 1000) ;Number of game simulations to run
(define diceSides 12) ;Sides for die used in rollList
(define evenFail 2) ;When even rolls fail, used in losingRoll
(define oddFail 1) ;When odd rolls fail, used in losingRoll
(define evenRolls 6) ;Number of rolls for a single game
(define oddRolls 5) ;Number of rolls for a single game



;You don't need to modify anything below this line
;=============================================================
;Make a list of games with only even rolls, and a separate list
;of games with only odd rolls.
;The games would be played agasint each other in order, so the score
;of (first evenGames) should be compared with (first oddGames) and so on.
(define evenGames (build-list trials (lambda (x) (playGame evenRolls))))
(define oddGames (build-list trials (lambda (x) (playGame oddRolls))))

;List of boolean values, #t if even game beats the odd game
(define evenWins (map > evenGames oddGames))
;List of boolean values, #t if odd game beats the even game
(define oddWins (map < evenGames oddGames))
;List of boolean values, #t if even and odd game have the same value
(define noWin (map (lambda (ev od)
                     (= ev od))
                    evenGames
                    oddGames))

;filter so the above lists only have #t entries
;then the lenth of the list will be the number of wins (or no wins)
(define evenWinCount (length (filter (lambda (x) x) evenWins)))
(define oddWinCount (length (filter (lambda (x) x) oddWins)))
(define noWinCount (length (filter (lambda (x) x) noWin)))
(display "even wins: ") evenWinCount
(display "odd wins: ")oddWinCount
(display "no wins: ")noWinCount

#|
Enter your answers to the questions from the homework below:






|#
