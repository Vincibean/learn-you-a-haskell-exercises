import Data.Monoid

-- Make sure that the List obeys the laws for Monoid
monoidLaw1 = mempty `mappend` testList == testList
		where testList = Value 10 $ Value 20 Empty

monoidLaw2 = testList `mappend` mempty == testList
		where testList = Value 10 $ Value 20 Empty

--monoidLaw3 = (testList1 `mappend` testList2) `mappend` testList3 == testList1 `mappend` (testList2 `mappend` testList3)
--		where testList1 = Value 1 $ Value 2 $ Value 3 $ Value 4 Empty
--		      testList2 = Value 10
--		      testList3 = Value 100 $ Value 200 Empty
