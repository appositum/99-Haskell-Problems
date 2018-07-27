import Data.List (elemIndex)

removeAt :: (Eq a) => Int -> [a] -> (a, [a])
removeAt kth lst = (lst!!kth, rest)
  where rest = filter (\x -> x `elemIndex` lst /= Just kth) lst

main :: IO ()
main = print $ removeAt 2 "abcd" -- ('b', "acd")
