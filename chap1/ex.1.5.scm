;언어실행기가 인자먼저 계산법(applicative order evaluation)을 따르는지
;아니면 정의대로 계산법(normal-order- evaluation)을 따르는지 알아보자

(define (p) (p))

(define (test x y)
	(if (= x 0)
		0
		y)) 

(test 0 (p))

; 무한루프 빠짐. scheme 컴파일러는 applicative order 방식임.