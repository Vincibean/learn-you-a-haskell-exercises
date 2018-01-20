-- Raise x to the power y, using recursion
-- For example, power 5 2 = 25
power :: Int -> Int -> Int
power :: Int -> Int -> Int
power _ 0 = 1
power x y = x * power x (y - 1)

power :: (Eq a, Ord a, Fractional a) => a -> a -> a
power x y
        | y < 0 = power (1 / x) (-y)
 	    | y == 0 = 1
 	    | otherwise = x * power x (y - 1)

