
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
What will be the output when the following NetLogo code is run?
```
let x 8
let greater-than-ten x > 10
show greater-than-ten
```

---


#### Q19
Consider the following NetLogo code snippet:

```
ask turtles [
  ifelse xcor > 0 [
    set color red
  ] [
    set color blue
  ]
]
```
What will be the outcome of this code? Explain.

---

#### Q20
Consider the following NetLogo code snippet:

```
ask turtle 0 [
  setxy 10 5
  set heading 0
  fd 8
  lt 90
  fd 5
  rt 180
  fd 12
]
```

After executing this code, what will be the final coordinates of the turtle?"

---

#### Q21
Write a NetLogo procedure called `trickCoin` that reports 0 (for heads) 5/8 times or 1 (for tails) 3/8 times.

Write a NetLogo procedure called `display` that asks all patches to run `trickCoin` and sets their `pcolor` to red for heads and blue for tails.

Write a NetLogo procedure called `countHeads` that reports the number of patches that returned heads after calling `trickCoin` and `display`.
