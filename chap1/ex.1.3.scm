;세 숫자를 인자로 받아 그 가운데 큰 숫자 두개를 제곱한 다음, 그 두 값을 덧셈하여 내놓는 프로시저를 정의하라.

(define (ex.1.3 x y z)
	(if (> x y)
		(square-sum x (max y z))
		(square-sum y (max x z))
	)
)

(define (square-sum x y)
	(+ (square x) (square y))
)

(define (square x)
	(* x x)
)

;test
(ex.1.3 3 4 5)
(ex.1.3 8 4 2)
(ex.1.3 7 7 7)
(ex.1.3 0 4 2)
(ex.1.3 0 4 2)

;output
; 41
; 80
; 98
; 20
; 4