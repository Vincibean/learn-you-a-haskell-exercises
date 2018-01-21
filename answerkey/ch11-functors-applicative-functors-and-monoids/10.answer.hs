import Control.Applicative
import Data.Monoid

binaryFunctionList = Value (+) $ Value (*) $ Value (^) $ Value max Empty

twoValueList = Value 10 $ Value 20 Empty

anotherList = Value 100 $ Value 200 $ Value 300 Empty

-- Use <*> on the binary functions list and the number lists
operationOverLists = binaryFunctionList <*> twoValueList <*> anotherList
