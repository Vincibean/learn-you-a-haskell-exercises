import Data.Monoid
import Control.Monad.Writer

{-
 - Investigate what other functions instead of describe can be passed to the binary search.
 - Is it possible to provide a function, so that when we do the binary search we can return a count of how many comparisons the algorithm took?
 -}

counter :: a -> b -> Sum Int
counter _ _ = Sum 1

countBinarySearchSteps :: (Show a, Eq a, Ord a) => a -> [a] -> Int
countBinarySearchSteps x ys = getSum $ snd $ runWriter $ binarySearch counter x ys
