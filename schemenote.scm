Scheme Functions
===================
this is a repo about scheme funcions and some notes


Expressions
=============
``` scheme
486

(+ 137 248)
;Value: 385

(* 2.7 12)
;Value: 32.400000000000006

(+ (* 3
      (+ (* 2 4)
	 (+ 3 5)))
   (+ (- 10 7)
      6))
;Value: 57
```
---------

Naming and the Environment
=====================
``` Scheme
(define size 2)
;Value: size

(* size 5)
;Value: 10

(define PI 3.1415)
;Value: pi

(* 2 PI size)
;Value: 12.566
```
 
Applicative order versus normal order
=========
## Applicative order
- To evaluate a combination, do the following:
    - Evaluate the subexpressions of the combination.
    - Apply the proceduce that is the value of the leftmost subexpression (the operator) to the arguments that are the values of the other subexpressions.

## Normal order
- To eva;uate a combination, do the following:
    - Not evaluate a combination until its value was needed.
    - substitute operand expressions for parameters until it obtained an expression involving only primitive operators,and would then preform the evaluation.

## What is used in Scheme?
- Lisp uses applicative-order evaluation,partly because of the additional efficiency obtained from avoiding multiple evaluation of ecpressions.
- normal-order evaluation becomes much more complicated to deal with when we leave the realm of procedures that can be modeled by substitution.
- On rhe other hand, normal-order evaluation can be an extremely valuable tool.


Condtional Expressions and Predicates
====================================
``` Scheme
(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))
;Value: abs

(cond (<p1> <e1>)
      (<p2> <e2>)
      ...
      (<p3> <e3>))

General From
(define (abs x)
  (if (< x 0)
      (- x)
      x))
;Value: abs

General Form
(if <predicate> <consequent> <alternative>)
```
- Conditional expressions are evaluated as follows.
    - The predicate <p1> is evaluated first. If its value is false, then <p2> is evaluated.
    - If <p2>'s value is also false, then <p3> is evaluated.
    - This process continues until a predicate is found whose value is true, in which case the interpreter returns the value of the corresponding consequent expression.
    - If none of the <p>'s value is true, the value of the cond is undefined.
- If expressions are evaluated as follows.
    - The interpreter starts by eva;uating the <predicate> part of expression.
    - If the <predicate> evaluates to a true value,the interpreter then evaluates the <consequent> and return its values
    - Otherwise it evaluates the <alternative> and return its values.


## Logic
- (and <e1> ... <en>)
- (or <e1> ... <en>)
- (not <e>)

(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- guess x)) 0.001))
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  (define (s-iter guess)
    (if (good-enough? guess)
	guess
	(s-iter (improve guess))))
  (s-iter 1.0))

(sqrt 2)






