import Data.Function
import Data.List

lsort :: [[a]] -> [[a]]
lsort xs = sortBy (compare `on` length) xs

lfsort :: [[a]] -> [[a]]
lfsort xs = sortBy (compare `on` (count xs . length)) xs

count :: Foldable t => [t a] -> Int -> Int
count xs x = length $ filter (\t -> snd t == x) lens
  where lens = map (\a -> (a, length a)) xs

main = do
    print $ lsort ["abc","de","fgh","de","ijkl","mn","o"] -- ["o","de","de","mn","abc","fgh","ijkl"]
    print $ lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] -- ["ijkl","o","abc","fgh","de","de","mn"]
