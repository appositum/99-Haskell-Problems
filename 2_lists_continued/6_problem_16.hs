import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

dropEvery :: (Eq a) => [a] -> Int -> [a]
dropEvery lst nth = filter check lst
  where check i = (fromMaybe 0 $ elemIndex i lst) `notElem` indices
        indices = [nth-1, (nth-1)+3..length(lst)]

<<<<<<< HEAD
main :: IO ()
main = print $ dropEvery "abcdefghik" 3 -- abdeghk
=======

main = do
    print $ dropEvery "abcdefghik" 3 -- abdeghk
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
