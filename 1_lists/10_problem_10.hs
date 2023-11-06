import Data.List (groupBy)

encode str = map (\(x:xs) -> (length (x:xs), x)) splitted
  where splitted = groupBy (\x y -> x == y) str

main = do
    let str = "aaaabccaadeeee"
    print $ encode str
