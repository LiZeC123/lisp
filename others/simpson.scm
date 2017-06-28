(define (cube x)
  (* x x x))
;Value: cube

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))
;Value: sum

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
;Value: integral

(integral cube 0 1 0.01)
;Value: .24998750000000042

(integral cube 0 1 0.001)
;Value: .249999875000001

(define (i-sum term a next b)
  (define (sum-iter num a b)
    (if (> a b) num 
	(sum-iter (+ (term a) num) (next a) b)))
  (sum-iter 0 a b))
;Value: i-sum

(i-sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 100)
;Value: 5050

(define (i-integral f a b dx)
  (* (i-sum f
	    (+ a (/ dx 2.0))
	    (lambda (x) (+ x dx))
	    b)
     dx))
;Value: i-integral

(i-integral cube 0 1 0.01)
;Value: .24998750000000042

;(i-integral cube 0 1 0.000001)
;Value: .2500000000014414
;This will cost a lot time ,so don't do this if load this file

(define (even? n)
  (= (remainder n 2) 0))
;Value: even?

;Simpson'Rule 
(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (term n)
    (* (f (+ a (* h n))) (if (even? n) 2 4)))
  (* (+ (f a) (i-sum term 1 (lambda (x) (+ x 1)) (- n 1)) (f b)) (/ h 3.0)))
;Value: simpson

(simpson cube 0 1 100)
;Value: .25

(define (f x)
  (if (= x 0)
      1
      (/ (sin x) x)))

(simpson f 0 1 8)
;Value: .9460833108884718









