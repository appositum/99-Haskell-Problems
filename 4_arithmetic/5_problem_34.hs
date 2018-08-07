coprime :: Integral a => a -> a -> Bool
coprime a b = gcd a b == 1

totient :: Integral a => a -> Int
totient 1 = 1
totient m = length $ filter (coprime m) [1..m]

main :: IO ()
main = print $ totient 10 -- 4
