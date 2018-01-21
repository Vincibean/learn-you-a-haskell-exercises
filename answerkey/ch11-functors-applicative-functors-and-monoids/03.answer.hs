import Data.Monoid

-- Make our list a Monoid
instance Monoid (List a) where
        mempty = Empty
        mappend = combineLists
