import Data.List (elemIndex)

split :: (Eq a) => [a] -> Int -> ([a], [a])
split lst nth = break (\x -> Just nth == x `elemIndex` lst) lst

main :: IO ()
main = print $ split "abcdefghik" 3 -- ("abc", "defghik")
