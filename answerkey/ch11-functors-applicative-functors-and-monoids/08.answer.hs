import Control.Applicative

twoValueList = Value 10 $ Value 20 Empty

-- Use <$> and <*> on the lists with a binary function
anotherList = Value 100 $ Value 200 $ Value 300 Empty

addAll = (+) <$> twoValueList <*> anotherList
