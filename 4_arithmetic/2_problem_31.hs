primes :: [Integer]
primes = filterPrimes [2..]
  where filterPrimes (x:xs) =
          x : filterPrimes (filter (\n -> n `mod` x /= 0) xs)

isPrime :: Integer -> Bool
isPrime n = n `elem` takeWhile (<=n) primes

main :: IO ()
main = print $ isPrime 7 -- True
