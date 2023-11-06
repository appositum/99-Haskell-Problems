repli :: [a] -> Int -> [a]
repli str num = concatMap (\char -> take num $ cycle [char]) str

main :: IO ()
main = print $ repli "abc" 3 -- "aaabbbccc"
