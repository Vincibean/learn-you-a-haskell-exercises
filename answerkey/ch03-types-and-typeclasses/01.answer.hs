data Colour = Red | Orange | Yellow | Green | Blue | Indigo | Violet
    deriving (Eq, Ord, Show, Bounded, Enum)

{-
 - The Colour typeclass is of type Ord
 - What is the "first" (or least) colour
 -}
firstColour = minBound :: Colour
