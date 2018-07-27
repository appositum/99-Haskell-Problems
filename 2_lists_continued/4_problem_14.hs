dupli :: [a] -> [a]
dupli = concatMap $ replicate 2

main :: IO ()
main = do
    print $ dupli "abccd"   -- "aabbccccdd"
    print $ dupli [1, 2, 3] -- [1,1,2,2,3,3]
