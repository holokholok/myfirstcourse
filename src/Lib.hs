module Lib
    ( someFunc, time
    ) where

import Data.Time.Clock.POSIX

someFunc :: IO ()
someFunc = putStrLn "someFunc"


time :: IO ()
time = getPOSIXTime >>= print
