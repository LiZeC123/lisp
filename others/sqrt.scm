;You are in an interaction window of the Edwin editor.
;Type `C-h' for help, or `C-h t' for a tutorial.
;`C-h m' will describe some commands.
;`C-h' means: hold down the Ctrl key and type `h'.
;Package: (user)

(define (sqrt x)
  (sqrt-iter 1.0 x))
;Value: sqrt

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
;Value: sqrt-iter

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
;Value: good-enough?

(define (square x)
  (* x x))
;Value: square


(define (improve guess x)
  (average guess (/ x guess)))
;Value: improve

(define (average x y)
  (/ (+ x y) 2))
;Value: average


(sqrt 3)
;Value: 1.7321428571428572





