rotate :: (Ord a) => [a] -> Int -> [a]
rotate xs n
    | n >= 0 = concat (drop n xs : take n xs : [])
    | n < 0  = concat (drop len xs : take len xs : [])
    where len = n + length xs

main = do
    print $ rotate ['a','b','c','d','e','f','g','h'] 3 -- "defghabc"
    print $ rotate ['a','b','c','d','e','f','g','h'] (-2) -- "ghabcdef"
