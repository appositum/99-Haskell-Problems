import Data.List (groupBy)

pack :: [Char] -> [String]
pack = groupBy (==)

main :: IO ()
main = do
    print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] -- ["aaaa","b","cc","aa","d","eeee"]
