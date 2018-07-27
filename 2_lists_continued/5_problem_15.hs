repli :: [a] -> Int -> [a]
repli str num = concatMap (\char -> take num $ cycle [char]) str

<<<<<<< HEAD
main :: IO ()
main = print $ repli "abc" 3 -- "aaabbbccc"
=======
main = do
    print $ repli "abc" 3 -- "aaabbbccc"
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
