(define (fibonacci n)
    (cond   ((= n 0) 0)
            ((= n 1) 1)
            (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))
    )
        
)


;test
> (fibonacci 0)
0
> (fibonacci 1)
1
> (fibonacci 2)
1
> (fibonacci 3)
2
> (fibonacci 4)
3
> (fibonacci 5)
5
> (fibonacci 6)
8
