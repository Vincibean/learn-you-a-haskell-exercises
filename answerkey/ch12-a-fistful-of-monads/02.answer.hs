-- Make the Validation a Monad
instance Monad Validation where 
  (Success a) >>= f = f a
  (Fail s) >>= _ = Fail s

instance Applicative Validation where
  pure a = Success a
  Success f <*> Success a = Success (f a)
  (Fail s) <*> _ = Fail s
  _ <*> (Fail s) = Fail s

instance Functor Validation where
  fmap f (Success a) = Success (f a)
  fmap _ (Fail s) = Fail s
