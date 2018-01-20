-- Sum the squares between two numbers. This function should be similar to the sumInts function
sumSquares :: Int -> Int -> Int
sumSquares a b = if (a > b) then 0
			else sq a + sumSquares (a+1) b
