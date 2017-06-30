

;--------abs.scm--------
(display "
abs.scm")
(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))
;Value: abs




;--------accumulate.scm--------
(display "
accumulate.scm")
;acculate the sum of term(x) from a to b
;combiner	: combiner the part sum and term(x)
;null-value	: begin value
;term 		: the function calculate every x
;a 			: begin index
;next 		: the function get next x
;b 			: end index
(define (accumulate combiner null-value term a next b)
  (define (accumulate-iter num a b)
    (if (> a b) num
	(accumulate-iter (combiner (term a) num) (next a) b)))
    (accumulate-iter null-value a b))
;Value: accumulate

;--------get_root_by_iter.scm--------
(display "
get_root_by_iter.scm")

(define (get-root-by-iter f guess)
  (define N 10000)
  (define kesai 0.000001)
  (define (good-enough? x y)
    (< (abs (- x y)) kesai))
  (define (iter x y count)
    (cond ((good-enough? x y ) x)
	  ((= N count ) -1)
	  (else (iter (f x) x (+ count 1)))))
  (iter (f guess) guess 1))
;Value: get-root-by-iter


; (define (f x)
;   (sqrt (+ x 1)))
;Value: f
;(get-root-by-iter f 1)
;Value: 1.6180165422314876











;--------listfunction.scm--------
(display "
listfunction.scm")
;get the value in the list of given index
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))
;Value: list-ref

;get the length of list
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
;Value: length

;get the length of list
(define (iter-length items)
  (define (iter a count)
    (if (null? a)
	count
	(iter (cdr a) (+ 1 count))))
  (iter items 0))
;Value: iter-length

;append list2 to list1
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))
;Value: append

;get the last value of list
(define (last-pair list)
  (if (null? (cdr list))
      (car list)
      (last-pair (cdr list))))
;Value: last-pair

;reverse the list
(define (reverse list)
  (if (null? (cdr list))
      list
      (cons (reverse (cdr list)) (car list))))
;Value: reverse

;reverse the list
(define (reverse items)
  (if (null? items)
      '()
      (append (reverse (cdr items)) (list (car items)))))
;Value: reverse










;--------max3.scm--------
(display "
max3.scm")
(DEFINE (max3 a b c)
  (cond ((and (> a c) (> b c)) (+ a b))
	((and (> a b) (> c b)) (+ a c))
	((and (> b a) (> c a)) (+ b c))))
;Value: max3



;--------square.scm--------
(display "
square.scm")
(define (square x)
	(* x x))