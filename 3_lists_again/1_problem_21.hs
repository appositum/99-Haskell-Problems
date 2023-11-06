insertAt :: a -> [a] -> Int -> [a]
insertAt el lst pos = concat $ hd : [el] : tl : []
  where hd = take (pos-1) lst
        tl = drop (pos-1) lst

main :: IO ()
main = print $ insertAt 'X' "abcd" 2 -- "aXbcd"
