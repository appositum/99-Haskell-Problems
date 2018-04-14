myButLast :: [a] -> a
myButLast = (head . reverse . init)
