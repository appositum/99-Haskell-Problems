import Data.List (elemIndex)

removeAt :: (Eq a) => Int -> [a] -> (a, [a])
removeAt kth lst = (lst!!kth, rest)
  where rest = filter (\x -> x `elemIndex` lst /= Just kth) lst

<<<<<<< HEAD
main :: IO ()
main = print $ removeAt 2 "abcd" -- ('b', "acd")
=======

main = do
    print $ removeAt 2 "abcd" -- ('b', "acd")
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
