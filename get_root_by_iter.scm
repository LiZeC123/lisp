
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









