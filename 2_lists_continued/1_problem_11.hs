import Data.List (groupBy)

data Element a = Multiple Int a | Single a deriving (Show)

<<<<<<< HEAD
encode :: (Eq a) => [a] -> [(Int, a)]
encode str = map (\xs@(x:_) -> (length xs, x)) splitted
  where splitted = groupBy (==) str
=======

encode :: (Eq a) => [a] -> [(Int, a)]
encode str = map (\xs -> (length xs, head xs)) splitted
  where splitted = groupBy (\x y -> x == y) str

>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562

encodeModified :: (Eq a) => [a] -> [Element a]
encodeModified str = map classify $ encode str
  where classify (1, c) = Single c
        classify (n, c) = Multiple n c

<<<<<<< HEAD
main :: IO ()
main = print $ encodeModified "aaaabccaadeeee"
  -- [Multiple 4 'a',Single 'b',Multiple 2 'c',
  -- Multiple 2 'a',Single 'd',Multiple 4 'e']
=======

main = do
    print $ encodeModified "aaaabccaadeeee"
    -- [Multiple 4 'a',Single 'b',Multiple 2 'c',
    -- Multiple 2 'a',Single 'd',Multiple 4 'e']
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
