range :: Int -> Int -> [Int]
range start end = take ((end - start)+1) $ iterate (+1) start

main :: IO ()
main = print $ range 4 9 -- [4,5,6,7,8,9]
