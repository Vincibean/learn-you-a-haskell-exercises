-- Have a play with implementing Hand for some other types, for instance Int and Bool
instance Hand Bool where
        play [] = False
        play c = head c
