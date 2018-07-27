data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

<<<<<<< HEAD
main :: IO ()
=======
>>>>>>> 3c7e278b3f191678d8af2f2743b707924a318562
main = do
    print $ flatten (Elem 5) -- [5]
    print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) -- [1,2,3,4,5]
    print ((flatten (List [])) :: [Int]) -- []
