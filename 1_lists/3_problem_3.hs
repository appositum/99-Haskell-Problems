elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt _ _ = error "Index out of bounds"

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ elementAt [1, 2, 3] 2 -- 2
    print $ elementAt "haskell" 5 -- 'e'
