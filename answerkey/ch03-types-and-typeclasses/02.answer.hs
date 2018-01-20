data Colour = Red | Orange | Yellow | Green | Blue | Indigo | Violet
    deriving (Eq, Ord, Show, Bounded, Enum)

-- List the colours in reverse order
reverseColourOrder = reverse [minBound .. maxBound] :: [Colour]
