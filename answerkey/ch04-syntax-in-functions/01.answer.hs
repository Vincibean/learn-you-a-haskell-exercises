-- This function should print a single digit number as English text, or "unknown" if it's out of the range 0-9
englishDigit :: Int -> String
englishDigit 0 = "zero"
englishDigit 1 = "one"
englishDigit 2 = "two"
englishDigit 3 = "three"
englishDigit 4 = "four"
englishDigit 5 = "five"
englishDigit 6 = "six"
englishDigit 7 = "seven"
englishDigit 8 = "eight"
englishDigit 9 = "nine"
englishDigit _ = "unknown"

-- shorter solution
englishDigit' :: Int -> String
englishDigit' x
  | x < 0 || x > 9 = "unknown"
  | otherwise = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"] !! x

