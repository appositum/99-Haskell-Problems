import Data.List (groupBy)

pack = groupBy (==)

main = do
    print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] -- ["aaaa","b","cc","aa","d","eeee"]
