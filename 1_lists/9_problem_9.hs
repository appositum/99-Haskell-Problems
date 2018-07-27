import Data.List (groupBy)

pack :: [Char] -> [String]
pack = groupBy (==)

main :: IO ()
main = print $ pack "aaaabccaadeeee" -- ["aaaa","b","cc","aa","d","eeee"]
