slice :: [a] -> Int -> Int -> [a]
slice lst i k = (drop (i-1) . take k) lst

main :: IO ()
main = print $ slice "abcdefghik" 3 7 -- "cdefg"
