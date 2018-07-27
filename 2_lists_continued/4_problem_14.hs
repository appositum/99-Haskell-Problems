dupli :: [a] -> [a]
<<<<<<< HEAD
dupli = concatMap $ replicate 2

main :: IO ()
=======
dupli = concatMap (replicate 2)

>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ dupli "abccd"   -- "aabbccccdd"
    print $ dupli [1, 2, 3] -- [1,1,2,2,3,3]
