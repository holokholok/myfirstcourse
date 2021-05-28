
magicCoin' :: Bool -> Bool
magicCoin' _ = True
--呢個既意思係佢用_直接俾左個value佢

--例如，以下就係，在左手邊既True/ False 取代左上行既_
magicCoin'' :: Bool -> Bool
magicCoin'' True  = True
magicCoin'' False = True



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
