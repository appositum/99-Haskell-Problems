myLast :: [a] -> a
myLast = head . reverse

main :: IO ()
main = do
    print $ myLast [1, 2, 3, 4]  -- 4
    print $ myLast ['x','y','z'] -- 'z'
