myLast :: [a] -> a
myLast = head . reverse

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ myLast [1, 2, 3, 4]  -- 4
    print $ myLast ['x','y','z'] -- 'z'
