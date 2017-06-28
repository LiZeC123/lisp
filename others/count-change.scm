
(define (count-change amount)
  (cc amount 5))
;Value: count-change


(define (cc amount kind-of-coins)
  (cond ((= amount 0) 1)
	((or (< amount 0) (= kind-of-coins 0)) 0)
	(else (+ (cc amount
		     (- kind-of-coins 1))
		 (cc (- amount 
			(first-denomination kind-of-coins))
			kind-of-coins)))))
;Value: cc

;Value: cc

(define (first-denomination kind-of-coins)
  (cond ((= kind-of-coins 1) 1)
	((= kind-of-coins 2) 5)
	((= kind-of-coins 3)10)
	((= kind-of-coins 4) 25)
	((= kind-of-coins 5) 50)))
;Value: first-denomination

(count-change 100)
;Value: 292



		     