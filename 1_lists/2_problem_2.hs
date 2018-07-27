myButLast :: [a] -> a
myButLast = (head . reverse . init)

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ myButLast [1,2,3,4]  -- 3
    print $ myButLast ['a'..'z'] -- 'y'
