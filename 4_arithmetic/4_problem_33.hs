coprime :: Integral a => a -> a -> Bool
coprime a b = gcd a b == 1

main :: IO ()
main = print $ coprime 35 64 -- True
