-- We can use the following type to simulate our own list
data List a = Empty | Value a (List a) deriving (Show, Eq)
