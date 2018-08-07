import Data.List (nub)

primes :: [Integer]
primes = filterPrimes [2..]
  where filterPrimes (x:xs) = x : filterPrimes (filter (\n -> n `mod` x /= 0) xs)

factors :: Integer -> [Integer]
factors 1 = []
factors n = (prime:) $ factors $ n `div` prime
  where prime = head $ dropWhile (\x -> n `mod` x /= 0) primes

prime_factors_mult :: Integer -> [(Integer, Int)]
prime_factors_mult x = nub $ map (\i -> (i, count xs i)) xs
  where count xs x = length $ filter (\i -> i == x) xs
        xs = factors x

main :: IO ()
main = print $ prime_factors_mult 315 -- [(3,2),(5,1),(7,1)]
