myGCD :: Integral a => a -> a -> a
myGCD x y = abs $ rec x y
  where rec a 0 = a
        rec a b = rec b (a `mod` b)

main :: IO ()
main = print [myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6] -- [9,3,3]
