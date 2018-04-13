import Data.List (group, nub, sort)

compress = concatMap nub . group

main = do
    print $ compress "aaaabccaadeeee"
