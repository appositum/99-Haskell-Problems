slice :: [a] -> Int -> Int -> [a]
slice lst i k = (drop (i-1) . take k) lst

<<<<<<< HEAD
main :: IO ()
main = print $ slice "abcdefghik" 3 7 -- "cdefg"
=======
main = do
    print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 -- "cdefg"
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
