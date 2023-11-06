import Data.List (groupBy)

data Element a = Multiple Int a | Single a deriving (Show)

encode :: (Eq a) => [a] -> [(Int, a)]
encode str = map (\xs -> (length xs, head xs)) splitted
  where splitted = groupBy (\x y -> x == y) str

encodeModified :: (Eq a) => [a] -> [Element a]
encodeModified str = map classify $ encode str
  where classify (1, c) = Single c
        classify (n, c) = Multiple n c

main = do
    print $ encodeModified "aaaabccaadeeee"
    -- [Multiple 4 'a',Single 'b',Multiple 2 'c',
    -- Multiple 2 'a',Single 'd',Multiple 4 'e']
