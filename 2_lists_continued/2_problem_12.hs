data Element a = Multiple Int a | Single a deriving (Show)

decodeModified :: [Element a] -> [a]
decodeModified arr = concatMap decode arr
  where decode (Single char) = replicate 1 char
        decode (Multiple n char) = replicate n char

main :: IO ()
main = print $ decodeModified lst -- "aaaabccaadeeee"
  where lst = [Multiple 4 'a', Single 'b', Multiple 2 'c',
               Multiple 2 'a', Single 'd', Multiple 4 'e']
