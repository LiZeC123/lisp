(define zero (lambda (f) (lambda (x) x)))
;Value: zernnno

(define (add-1 n) (lambda (f) (lambda (x) (f ((n f) x)))))
;Value: add-1

(define (f x) (+ x 1))
;Value: f

((zero f) 0)
;Value: 0

(define one (add-1 zero))
;Value: one

((one f) 0)
;Value: 1

(define two (add-1 one))
;Value: two

((two f) 0)
;Value: 2

(define (add m n) (lambda (f) (lambda (x) ((m f) ((n f) x)))))
;Value: add

(define four (add two two))
;Value: four

((four f) 0)
;Value: 4

(((add four (add one three)) f) 0)
;Value: 8



