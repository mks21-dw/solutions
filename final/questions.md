
### Racket Questions

What is the result of the following function call:

`(foldl (lambda (a b) (- b (* 3 a))) 0 '(1 2 3 4))`

1. 7
2. -30
3. 15
4. -9

---

Given the following function definition:

```
(define mystery (lambda (a)
  (if (< a 5)
      'small
      (if (< a 10)
          'medium
          (if (< a 15)
              'large
              'extra-large)))))
```

What is the result of calling the following function with the argument `(mystery 8)`?

1. 'small
2. 'medium
3. 'large
4. 'extra-large

---

Consider the following Racket code snippet:

```
(define evaluate-function (lambda (x)
  (if (even? x)
      (* x 2)
      (+ x 1))))
```

What will be the result of calling `(evaluate-function 3)`

---

Consider the following recursive Racket function:

```
(define recursive-function (lambda (n)
  (if (= n 0)
      0
      (+ n (recursive-function (- n 1))))))
```

What will be the result of calling `(recursive-function 5)`

---

Write a function called `DigitsDivBy10` that takes a single value representing a 2 digit positive integer and returns `#true` if the sum of the digits is divisible by ten and `#false` otherwise.

examples:
- `(DigitsDivBy10 23)` ==> `#false`
- `(DigitsDivBy10 37)` ==> `#true"`

---

Write a Racket function named `calculate-distance` that takes four parameters representing two coordinates (x1, y1) and (x2, y2). The function should return the Euclidean distance between the two coordinates. The distance between two points is calculated as:

$$ \sqrt{(x2-x1)^2 + (y2 - y1)^2} $$

---

Write a Racket function and test cases for a recursive Racket function called `(secondToLast L)` that returns the second-to-last item from a list (L) of two or more items.

---

Given :
```
(define a 3)
(define b 10)
(define c −3)
```

Evaluate:
1. `(* b (if (= (abs c) a) a c))`
2. `(* b (if (zero? c) −1 1))`
3. `((if (not(= a b c)) * /) a b)`

---

Write the Racket function for `(xor-3 a b c)` where `a`, `b`, and `c` are boolean values and the function produces a true value when one and only of its inputs is true:

- `(xor-3 #t #f #f)` -> `#t`
- `(xor-3 #f #f #t)` -> `#t`
- `(xor-3 #t #f #t)` -> `#f`
- `(xor-3 #t #t #t)` -> `#f`
- `(xor-3 #f #f #f)` -> `#f`

---

Given:

```
(define foo
  (lambda (x y)
      (if (< x y)
          x
         (foo (− x y) y))))
```

1. Evaluate `(foo 7 10)`
2. Evaluate `(foo 10 7)`

---

Evaluate `(filter (lambda(x) (> (abs x) 1)) '(−2 −1 0 1 2 3))`

---

Your favorite dog walker charges according to your dog’s weight. If your dog
weighs under 15 pounds, the walker charges $35. If your dog weighs between 15 and 40
pounds, inclusive, she charges $40. If your dog is over 40 pounds, she charges $40, plus an
additional $2 for each pound over 40 pounds. Write a function that can be invoked like
`(dogwalkCost w)` which returns the amount owed to the dog walker depending on the weight
of the dog.

- `(dogwalkCost 32)` → `40`
- `(dogwalkCost 46)` → `52`

---

Write the function `(manhattan-distance L1 L2)` to compute the sum of the distances between the corresponding items in lists `L1` and `L2`. Assume both `L1` and `L2` have the same length and contain only numbers.

Example function calls:

```
(manhattan-distance '() '()) = 0
(manhattan-distance '(4) '(5)) = |4 - 5| = 1
(manhattan-distance '(1 2 3) '(4 5 0))
			= |1 - 4| + |2 - 5| + |3 - 0|
 			= 3 + 3 + 3
	= 9
```
---

Write a recursive Racket function named `harmonicSeries` that calculates the sum of the harmonic series up to the nth term. The harmonic series is defined as:

$$ H(n) = \frac{1}{n} + ... + \frac{1}{4} + \frac{1}{3} + \frac{1}{2} + 1 $$

where H(1) = 1

---

Write a Racket function named `findMiddleTerm` that takes a list of numbers as input and returns the middle term. If there are two middle terms, the function should return their average. Assume the list has at least 1 value in it.

---

### NetLogo Questions

How do you add custom attributes to turtles? To a patch?

---

Write a turtle context procedure called `danceSteps`, which should instruct a turtle to:

1.  Rotate randomly by a number of degrees in the range [-45, 45].
2.  Move forward 1 or 2 steps, chosen randomly.
3.  If the turtle is facing towards the top half of the world, set its color to a random shade of blue.
4.  If the turtle is facing towards the bottom half of the world, set its color to a random shade of red.

---

Create an observer context procedure named `colorAdaptation` with a parameter called `threshold`. This procedure should perform the following steps:

1. For each patch, calculate the average `pcolor` of its neighbors and store it in a custom property called `avgNeighbor`.
2. After setting `avgNeighbor` for all patches, compare the absolute difference between each patch's `pcolor` and `avgNeighbor`.
3. If the absolute difference is below the given threshold, set the patch color to black; otherwise, set it to white.

---

What will be the output when the following NetLogo code is run?
```
let x 8
let greater-than-ten x > 10
show greater-than-ten
```

---

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

Write a NetLogo procedure called `trickCoin` that reports 0 (for heads) 5/8 times or 1 (for tails) 3/8 times.

Write a NetLogo procedure called `display` that asks all patches to run `trickCoin` and sets their `pcolor` to red for heads and blue for tails.

Write a NetLogo procedure called `countHeads` that reports the number of patches that returned heads after calling `trickCoin` and `display`.
