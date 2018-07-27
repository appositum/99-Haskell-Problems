import Data.List (groupBy)

encode str = map (\xs@(x:_) -> (length xs, x)) splitted
  where splitted = groupBy (==) str

main = do
    let str = "aaaabccaadeeee"
    print $ encode str
