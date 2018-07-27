import Data.List (group, nub)

compress = concatMap nub . group

main = do
    print $ compress "aaaabccaadeeee" -- "abcade"
