import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

dropEvery :: (Eq a) => [a] -> Int -> [a]
dropEvery lst nth = filter check lst
  where check i = (fromMaybe 0 $ elemIndex i lst) `notElem` indices
        indices = [nth-1, (nth-1)+3..length(lst)]

main = do
    print $ dropEvery "abcdefghik" 3 -- abdeghk
