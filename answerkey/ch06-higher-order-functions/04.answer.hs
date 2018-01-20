-- Define a higher order sum function which accepts an (Int -> Int) function to apply to all integers between two values.
-- Again this should look similar to the sumInts and sumSquares functions
higherOrderSum :: (Int -> Int) -> Int -> Int -> Int
higherOrderSum intApplication a b = if (a > b) then 0
                                           else intApplication a + higherOrderSum intApplication (a+1) b
