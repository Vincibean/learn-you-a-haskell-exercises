{-
 - Imitate the functinality of zip
 - Hint: The function "min x y" returns the lower of values x and y
 - For example "ziplike [1,2,3] ['a', 'b', 'c', 'd']" returns [(1,'a'), (2, 'b'), (3, 'c')]
 -}
ziplike xs ys = [(xs!!i, ys!!i) | i <-[0..(min (length xs) (length ys)) - 1]]

