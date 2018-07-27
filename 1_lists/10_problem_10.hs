import Data.List (groupBy)

encode :: String -> String
encode str = map (\xs@(x:_) -> (length xs, x)) splitted
  where splitted = groupBy (==) str

main :: IO ()
main = do
    let str = "aaaabccaadeeee"
    print $ encode str
