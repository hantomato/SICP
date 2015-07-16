#lang scheme

(define (cube-root x)
	(cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
	(if (good-enough? guess x)
		guess
		(cube-root-iter (improve guess x)
			x)))

(define (improve guess x)
	(average3 (* guess 2) (/ x (square guess))))

(define (average3 x y)
	(/ (+ x y) 3))

(define (good-enough? guess x)
	(< (abs (- (square3 guess) x)) 0.001))

(define (square3 x)
	(* x x x))

(define (square x)
	(* x x))

;test
(cube-root 1)
(cube-root 4)
(cube-root 9)
(cube-root 27)
(cube-root 125)
(cube-root 800)
(cube-root 1000)

;output
; 1.0
; 1.5874096961416333
; 2.0801035255095734
; 3.0000005410641766
; 5.000000000287929
; 9.28317766796482
; 10.000000145265767

