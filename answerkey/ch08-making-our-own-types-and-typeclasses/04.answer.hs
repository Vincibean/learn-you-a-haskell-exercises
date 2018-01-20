-- Implement Hand for Coin, where play returns true if there are ten heads in a row in the list
instance Hand Coin where
        play [] = False
        play c = replicate 10 H `isInfixOf` c

