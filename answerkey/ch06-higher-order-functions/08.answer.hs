-- Define a factorial method using the higherOrderSequenceAppliction
hoFactorial :: Int -> Int
hoFactorial = higherOrderSequenceApplication id 1 (*) 1
