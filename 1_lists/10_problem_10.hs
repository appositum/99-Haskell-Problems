import Data.List (groupBy)

count char = foldl (\acc x -> if x == char then acc+1 else acc) 0

encode str = map (\(x:xs) -> (length (x:xs), x)) splitted
  where splitted = groupBy (\x y -> x == y) str

main = do
    let str = "aaaabccaadeeee"
    print $ encode str
