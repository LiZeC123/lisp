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