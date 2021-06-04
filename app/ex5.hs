
magicCoin' :: Bool -> Bool
magicCoin' _ = True
--呢個既意思係佢用_直接俾左個value佢

--例如，以下就係，在左手邊既True/ False 取代左上行既_
magicCoin'' :: Bool -> Bool
magicCoin'' True  = True
magicCoin'' False = True

--可以咁理解：
--increment a = a + 1
--increment = a -> a + 1
--increment _ = a + 1
--increment = _ -> a + 1

not' :: Bool -> Bool
not' True = False
not' False = True
--意思就係佢先定義左一d rules, 令到個return係相反既。如果放一個True, 就會return 一個false. 


(\_ -> magicCoin) :: Bool -> (Bool -> Bool)
--呢一個係一個function，會return另一個function 

--例如︰

magicBool :: Bool -> (Bool -> Bool)
magicBool = \_ -> magicCoin

--呢句就係一個叫做\_既function 會出左另一個叫做magicCoin既function 

magicBool'1 = \_ -> \_ -> True

-- 原本係咁︿



magicBool'2 :: Bool -> Bool -> Bool
magicBool'2 = \_ _ -> True
--呢個係同magicBool'1一樣的


magicBool'' :: Bool -> Bool -> Bool
magicBool'' _ _ = True
--呢個都係同magicBool'1一樣的，所以叫syntax sugar

eitherTrue :: Bool -> Bool -> Bool
eitherTrue False False = False
eitherTrue _     _     = True 

plus :: Int -> Int -> Int
plus x y = x + y

plus' :: Int -> Int -> Int
plus' = \x -> \y -> x + y

increment :: Int -> Int
increment = plus 1

increment' :: Int -> Int
increment' = (\x -> \y -> x + y) 1

--          （     function     ）parameter 

additionResult :: Int
additionResult = plus 100 25

-- 結果就係125 

add :: Int -> Int -> Int
add x y = x + y

--一般會由右邊括起箭咀，好似咁︰


add :: Int -> (Int -> Int)
add = \x -> (\y -> x + y)
