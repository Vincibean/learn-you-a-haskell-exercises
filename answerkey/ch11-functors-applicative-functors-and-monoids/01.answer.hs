import CustomList

-- Make the list a Functor
instance Functor List where
        fmap _ Empty = Empty
        fmap f (Value v rest) = Value (f v) (fmap f rest)
