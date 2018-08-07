primes :: [Integer]
primes = filterPrimes [2..]
  where filterPrimes (x:xs) = x : filterPrimes (filter (\n -> n `mod` x /= 0) xs)

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = (prime:) $ primeFactors $ n `div` prime
  where prime = head $ dropWhile (\x -> n `mod` x /= 0) primes

main :: IO ()
main = print $ primeFactors 315 -- [3,3,5,7]
