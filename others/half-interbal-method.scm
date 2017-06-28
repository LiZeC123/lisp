(define (average x y)
	(/ (+ x y) 2.0))

(define (search f neg-point pos-point)
  (define (close-enough? x y)
    (< (abs (- x y)) 0.001))
  (define (positive? x) (> x 0))
  (define (negative? x) (< x 0))
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
	mid-point
	(let ((test-value (f mid-point)))
	  (cond ((positive? test-value)
		 (search f neg-point mid-point))
		((negative?  test-value)
		 (search f mid-point pos-point))
		(else mid-point))))))
;Value: search

(define (f x)
  (- x 1))
;Value: f

(define (half-interval-method f a b)
  (let ((a-value (f a))
	(b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
	   (search f a b))
	  ((and (negative? b-value) (positive? a-value))
	   (search f b a))
	  (else
	   (error "Values are not og opposite sign" a b)))))
;Value: half-interval-method

(half-interval-method sin 2.0 4.0)
;Value: 3.14111328125

(half-interval-method (lambda (x) (- (* x x x) (* 2 x) 3)) 1.0 2.0)
;Value: 1.89306640625

(half-interval-method f 3 4)
;Values are not og opposite sign 3 4
;To continue, call RESTART with an option number:
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.
;Start debugger? (y or n): n




