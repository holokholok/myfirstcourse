message :: String -> String
message name =
    if name == "Dave"
    then "I can't do that."
    else if name == "Sam"
            then "Play it again."
            else "Hello."

message :: String -> String
message name = 
    if name /= "Dave"
    then if Name == "Sam"
        then "Play it again."
        else "Hello."
    else "I can't do that."

message :: String -> String
message name = 
    case name of
        "Dave" -> "I can't do that."
        "Sam" -> "Play it again."
        -     -> "Hello."

main :: IO ()
main = putStrLn (message "Dave") 

--  (_) This pattern matches everything in Haskell, and it's included to make sure any time our function is called in the future with something we didn't anticipate, it will still work. 

-- a logical error, because while it’s syntactically correct, it doesn’t have the correct logic.message :: String -> String
message name =
  case name of
    _      -> "Hello."
    "Dave" -> "I can't do that."
    "Sam"  -> "Play it again."


--In this case, even if name is "Dave", the code will never get that far, because the underscore matches on everything, and it’s first in the list

addThem :: Int -> Int -> Int -> Int -> Int 
addThem a b c d = a + b + c + d 

addThem :: Int -> (Int -> (Int -> (Int -> Int)))
addThem = \a -> (\b -> (\c -> (\d -> a + b + c + d)))