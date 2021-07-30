module Main where

import Lib

main :: IO ()
main = do print ( 1 + 5 )
          someFunc 
          time
          print additionResult
plus :: Int -> Int -> Int
plus x y = x + y


additionResult :: Int
additionResult = plus 100 25


--print :: show a => a -> IO()

