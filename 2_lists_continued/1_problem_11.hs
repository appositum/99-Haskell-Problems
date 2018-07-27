import Data.List (groupBy)

data Element a = Multiple Int a | Single a deriving (Show)

encode :: (Eq a) => [a] -> [(Int, a)]
encode str = map (\xs@(x:_) -> (length xs, x)) splitted
  where splitted = groupBy (==) str

encodeModified :: (Eq a) => [a] -> [Element a]
encodeModified str = map classify $ encode str
  where classify (1, c) = Single c
        classify (n, c) = Multiple n c

main :: IO ()
main = print $ encodeModified "aaaabccaadeeee"
  -- [Multiple 4 'a',Single 'b',Multiple 2 'c',
  -- Multiple 2 'a',Single 'd',Multiple 4 'e']
