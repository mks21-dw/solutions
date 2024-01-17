
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

#### Q15
How do you add custom attributes to turtles? To a patch?

---

#### Q16
Write a turtle context procedure called `danceSteps`, which should instruct a turtle to:

1.  Rotate randomly by a number of degrees in the range [-45, 45].
2.  Move forward 1 or 2 steps, chosen randomly.
3.  If the turtle is facing towards the top half of the world, set its color to a random shade of blue.
4.  If the turtle is facing towards the bottom half of the world, set its color to a random shade of red.

---

#### Q17
Create an observer context procedure named `colorAdaptation` with a parameter called `threshold`. This procedure should perform the following steps:

1. For each patch, calculate the average `pcolor` of its neighbors and store it in a custom property called `avgNeighbor`.
2. After setting `avgNeighbor` for all patches, compare the absolute difference between each patch's `pcolor` and `avgNeighbor`.
3. If the absolute difference is below the given threshold, set the patch color to black; otherwise, set it to white.

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
