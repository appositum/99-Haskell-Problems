data Element a = Multiple Int a | Single a deriving (Show)

<<<<<<< HEAD
=======

>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
decodeModified :: [Element a] -> [a]
decodeModified arr = concatMap decode arr
  where decode (Single char) = replicate 1 char
        decode (Multiple n char) = replicate n char

<<<<<<< HEAD
main :: IO ()
main = print $ decodeModified lst -- "aaaabccaadeeee"
  where lst = [Multiple 4 'a', Single 'b', Multiple 2 'c',
               Multiple 2 'a', Single 'd', Multiple 4 'e']
=======

main = do
    print $ decodeModified lst -- "aaaabccaadeeee"
      where lst = [Multiple 4 'a', Single 'b', Multiple 2 'c',
                   Multiple 2 'a', Single 'd', Multiple 4 'e']
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
