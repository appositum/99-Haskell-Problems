isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome arr = arr == reversed
  where reversed = foldl (\acc x -> x:acc) [] arr

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ isPalindrome [1,2,3] -- False
    print $ isPalindrome "madamimadam" -- True
    print $ isPalindrome [1,2,4,8,16,8,4,2,1] -- True
