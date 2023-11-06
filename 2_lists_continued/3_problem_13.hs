import Data.List (groupBy)

data Element a = Multiple Int a | Single a deriving (Show)

encodeDirect :: (Eq a) => [a] -> [Element a]
encodeDirect str = map (\xs@(x:_) -> classify (length xs) x) splitted
  where splitted = groupBy (==) str
        classify 1 char = Single char
        classify n char = Multiple n char

main :: IO ()
main = do
    print $ encodeDirect "aaaabccaadeeee" -- [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
    print $ encodeDirect [1,2,34,4,43,3,5,1,1,1,1,1,1] -- [Single 1,Single 2,Single 34,Single 4,Single 43,Single 3,Single 5,Multiple 6 1]
