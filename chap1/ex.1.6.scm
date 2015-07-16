#lang scheme

(define (sqrt x)
	(sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (square x)
	(* x x))

;new-if
(define (new-if predicate then-clause else-clause)
	(cond 	(predicate then-clause)
			(else else-clause)))
;test
(sqrt 9)
(sqrt 4)
(sqrt 2)

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;output
; 3.00009155413138
; 2.0000000929222947
; 1.4142156862745097
; 5
; 0

