import Control.Applicative

-- Create some lists of binary functions
binaryFunctionList = Value (+) $ Value (*) $ Value (^) $ Value max Empty
