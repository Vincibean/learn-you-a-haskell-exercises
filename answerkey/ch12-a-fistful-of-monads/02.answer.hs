-- Make the Validation a Monad
instance Monad Validation where 
  (Success a) >>= f = f a
  (Fail s) >>= _ = Fail s
