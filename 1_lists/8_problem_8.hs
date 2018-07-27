import Data.List (group, nub)

compress :: String -> String
compress = concatMap nub . group

main :: IO ()
main = print $ compress "aaaabccaadeeee" -- "abcade"
