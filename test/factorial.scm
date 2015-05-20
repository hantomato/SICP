(define (factorial n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))
    )
)

;test
(display (factorial 1))
(newline)
(display (factorial 2))
(newline)
(display (factorial 3))
(newline)
(display (factorial 4))
(newline)
(display (factorial 5))
(newline)


