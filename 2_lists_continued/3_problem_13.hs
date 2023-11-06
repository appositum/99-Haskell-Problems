import Data.List (groupBy)

data Element a = Multiple Int a | Single a deriving (Show)

encodeDirect :: (Eq a) => [a] -> [Element a]
encodeDirect str = map (\xs -> classify (length xs) (head xs)) splitted
  where splitted = groupBy (\x y -> x == y) str
        classify 1 char = Single char
        classify n char = Multiple n char


main = do
    print $ encodeDirect "aaaabccaadeeee"
    print $ encodeDirect [1,2,34,4,43,3,5,1,1,1,1,1,1]
    -- [Multiple 4 'a',Single 'b',Multiple 2 'c',
    --  Multiple 2 'a',Single 'd',Multiple 4 'e']
