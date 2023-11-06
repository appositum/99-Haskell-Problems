repli :: [a] -> Int -> [a]
repli str num = concatMap (\char -> take num $ cycle [char]) str

main = do
    print $ repli "abc" 3 -- "aaabbbccc"
