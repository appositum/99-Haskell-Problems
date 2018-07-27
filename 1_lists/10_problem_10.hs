import Data.List (groupBy)

encode :: String -> [(Int, Char)]
encode str = map (\xs@(x:_) -> (length xs, x)) splitted
  where splitted = groupBy (==) str

main :: IO ()
main = print $ encode "aaaabccaadeeee" -- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
