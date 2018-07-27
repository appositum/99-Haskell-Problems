import Data.List (elemIndex)

split :: (Eq a) => [a] -> Int -> ([a], [a])
split lst nth = break (\x -> Just nth == x `elemIndex` lst) lst

<<<<<<< HEAD
main :: IO ()
main = print $ split "abcdefghik" 3 -- ("abc", "defghik")
=======
main = do
    print $ split "abcdefghik" 3 -- ("abc", "defghik")
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
