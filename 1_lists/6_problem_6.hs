isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome arr = arr == reversed
  where reversed = foldl (\acc x -> x:acc) [] arr
