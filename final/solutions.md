
## Racket Questions

#### Q0
Answer: 2. -30

---

#### Q1
Answer: 2. 'medium

---

#### Q2
Answer: 4

---

#### Q3
Answer: 15

---

#### Q4
```
(define DigitsDivBy10
  (lambda (n)
    (= 0
       (remainder (+
                   (quotient n 10)
                   (remainder n 10))
                  10))))
```


---

#### Q5
```
(define calculate-distance
  (lambda (x1 y1 x2 y2)
    (sqrt (+ (expt (- x2 x1) 2)
             (expt (- y2 y1) 2)))))
```

---

#### Q6
```
(define secondToLast
  (lambda (L)
    (if (null? (rest (rest L)))
        (first L)
        (secondToLast (rest L)))))
(secondToLast '(1 2))
(secondToLast '(1 2 3 4))
```

---

#### Q7

1. Answer: 30
2. Answer: 10
3. Answer: 30

---

#### Q8
```
(define xor3
  (lambda (p q r)
    (if (or p q r)
        (if (or (and p q)
                (and p r)
                (and q r))
            #false
            #true)
        #false)))
```
Explanation: `(or p q r)` ensures that at least one of the parameters is `#true`. The three `and` functions check if any pair of the inputs are both `#true`. If none of those `and` functions are `#true`, then exactly one of the parameters must be `#true`.

---

#### Q9
1. Answer: 7
2. Answer: 3

---

#### Q10
Answer: `'(-2 2 3)`

---

#### Q11
```
(define dogwalkCost
  (lambda (w)
    (if (< w 15)
        35
        (if (<= w 40)
            40
            (+ 40 (* 2 (- w 40)))))))
```

---

#### Q12
```
(define manhattan-distance
  (lambda (L1 L2)
    (if (null? L1)
        0
        (+ (abs (- (first L1)
                   (first L2)))
           (manhattan-distance (rest L1)
                              (rest L2)))
```

---

#### Q13
```
(define harmonicSeries
  (lambda (n)
    (if (= n 1)
        1
        (+ (/ 1 n) (harmonicSeries (- n 1))))))
```

---

### NetLogo Questions

#### Q14
How do you add custom attributes to turtles? To a patch?

```
turtles-own [property]
patches-own [property]
```

---

#### Q15
```
patches-own [onNeighbors]

to go
    ask patches [
        set onNeighbors count neighbors with [pcolor = green]
    ]
    ask patches [
        ifelse (pcolor = green)
        [ set pcolor red ]
        [
            if (onNeighbors mod 2 = 0)
            [ set pcolor green ]
        ]   
    ]
end
```

---

#### Q16
```
to danceSteps
  rt random 91 - 45
  fd random 2 + 1
  ifelse (heading < 90 or heading > 270)
  [ set color blue - 4 + random 9 ]
  [ set color red - 4 + random 9 ]
end
```
---

#### Q17
```
patches-own [avgNeighbor]

to colorAdaption [threshold]
  ask patches [
    set avgNeighbor mean [pcolor] of neighbors
  ]
  ask patches [
    ifelse (abs (pcolor - avgNeighbor) < threshold)
    [ set pcolor black ]
    [ set pcolor white ]
  ]
end
```

---

#### Q18
Answer: `false`

---


#### Q19
Answer: All the turtles on the right side of the world will be red. All the turtles on the left side (including the middle) will be blue.

---

#### Q20
Answer: (-16, 13)

---

#### Q21
```
to-report trickCoin
    ifelse (random 8 < 5)
    [report 0]
    [report 1]
end

to display
    ask patches [
        ifelse (trickCoin == 0)
        [ set pcolor red ]
        [ ser pcolor blue ]
    ]
end


to-report countHeads
    report count patches with [pcolor = red]
end
```
