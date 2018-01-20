-- create a list of length n of the fibbonaci sequence in reverse order
-- examples: fib 0 = [0]
-- 	     fib 1 = [1, 0]
--	     fib 10 = [55,34,21,13,8,5,3,2,1,1,0]
-- try to use a where clause
fib :: (Num a, Eq a) => a -> [a]
fib 0 = [0]
fib 1 = [1, 0]
fib n = head prev + head prev2 : prev
        where prev = fib (n-1)
              prev2 = fib (n-2)
