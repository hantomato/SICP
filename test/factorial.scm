(define (factorial n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))
    )
)

> (factorial 0)
1
> (factorial 1)
1
> (factorial 2)
2
> (factorial 3)
6
> (factorial 4)
24


