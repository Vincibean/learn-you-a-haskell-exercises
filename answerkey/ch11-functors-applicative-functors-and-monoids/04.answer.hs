import Control.Applicative

-- Make our list an Applicative
instance Applicative List where
        pure x = Value x Empty
        Empty <*> _ = Empty
        (Value f rest) <*> list = combineLists (fmap f list) (rest <*> list)
