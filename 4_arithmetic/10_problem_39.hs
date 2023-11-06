primes :: [Integer]
primes = filterPrimes [2..]
  where filterPrimes (x:xs) =
          x : filterPrimes (filter (\n -> n `mod` x /= 0) xs)

primesR' :: [Integer] -> Integer -> Integer -> [Integer]
primesR' [] _ _ = []
primesR' (x:xs) n m
    | x > m = primesR' [] n m
    | x `inrange` (n,m) = x : primesR' xs n m
    | otherwise = primesR' xs n m
    where inrange x (a,b) = x `elem` [a..b]

primesR :: Integer -> Integer -> [Integer]
primesR = primesR' primes

main :: IO ()
main = print $ primesR 10 20 -- [11,13,17,19]
