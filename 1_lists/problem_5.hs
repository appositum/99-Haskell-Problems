myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x:acc) []
