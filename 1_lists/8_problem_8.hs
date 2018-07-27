import Data.List (group, nub)

compress :: String -> String
compress = concatMap nub . group

main :: IO ()
main = do
    print $ compress "aaaabccaadeeee" -- "abcade"
