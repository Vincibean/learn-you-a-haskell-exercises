import Control.Applicative

-- Make sure that the List obeys the laws for Applicative
applicativeLaw1 = (pure (+2) <*> testList) == (fmap (+2) testList)
		where testList = Value 10 $ Value 20 Empty

applicativeLaw2 = (pure id <*> testList) == testList
		where testList = Value 10 $ Value 20 Empty

--applicativeLaw3 = (pure (.) <*> testList1 <*> testList2 <*> testList3) == (testList1 <*> (testList2 <*> testList3))
--		where testList1 = Value 10 $ Value 20 Empty
--		      testList2 = Value 1 $ Value 2 $ Value 3 Empty
--		      testList3 = Value 2 $ Value 4 $ Value 6 $ Value 8 Empty

applicativeLaw4 = (fromPure (*10) <*> fromPure 10) == (fromPure ( (*10) 10))

fromPure :: a -> List a
fromPure = pure

--applicativeLaw5 = ((+5) <*> (fromPure 123)) == (fromPure ($ 123) <*> (+5))
