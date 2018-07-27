import System.Random (randomRIO)
import Data.List (permutations)

rnd_permu xs = do
    i <- randomRIO (0, length lst-1)
    return $ lst !! i
    where lst = permutations xs

main :: IO ()
main = print $ rnd_permu "abcdef"
