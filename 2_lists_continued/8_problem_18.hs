slice :: [a] -> Int -> Int -> [a]
slice lst i k = (drop (i-1) . take k) lst

main = do
    print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 -- "cdefg"
