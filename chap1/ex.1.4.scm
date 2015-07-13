(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

;test
(a-plus-abs-b 3 5)
(a-plus-abs-b 3 -5)
(a-plus-abs-b 7 5)
(a-plus-abs-b 7 -5)

;output
8
8
12
12
