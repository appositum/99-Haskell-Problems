elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt _ _ = error "Index out of bounds"

main :: IO ()
main = do
    print $ elementAt [1, 2, 3] 2 -- 2
    print $ elementAt "haskell" 5 -- 'e'
