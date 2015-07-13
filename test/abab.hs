squareList (x:xs) = (x * x) : squareList xs
squareList []     = []

squareList' = map (^ 2)

main = do
  print $ squareList  [1,2,3,4,5]
  print $ squareList' [1,2,3,4,5]
