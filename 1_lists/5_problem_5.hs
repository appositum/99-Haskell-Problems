myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x:acc) []

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ myReverse "A man, a plan, a canal, panama!" -- "!amanap ,lanac a ,nalp a ,nam A"
    print $ myReverse [1, 2, 3, 4] -- [4, 3, 2, 1]
