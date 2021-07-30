number :: Integer
number = 100390 + 29389

(+) :: Num a => a -> a -> a

--a small init 5
intFive = 5 :: int

-- a "floating-point" value of 10.3
floatTenPointThree = 10.3 :: Float

--add them together with (+). This will not work...
--because both types are concretized (or specialized)
errorResult = intFive + floatTenPointThree

-- add them together with (+). This will work
result = (fromIntegral intFive) + floatTenPointThree

-- the result is 15.3

