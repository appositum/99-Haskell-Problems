myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x:acc) []

main :: IO ()
main = do
    print $ myReverse "A man, a plan, a canal, panama!" -- "!amanap ,lanac a ,nalp a ,nam A"
    print $ myReverse [1, 2, 3, 4] -- [4, 3, 2, 1]
