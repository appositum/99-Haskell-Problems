myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ myLength [123, 456, 789] -- 3
    print $ myLength "Hello, world!" -- 13
