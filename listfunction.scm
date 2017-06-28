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








