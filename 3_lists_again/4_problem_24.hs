import System.Random (newStdGen, randomRs)

diff_select :: (Random a, Num a) => Int -> a -> IO [a]
diff_select 0 _ = return []
diff_select n m = do
    g <- newStdGen
    return $ take n $ randomRs (1, m) g

main :: IO ()
main = diff_select 6 49 >>= print
