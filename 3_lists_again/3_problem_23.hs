import System.Random (newStdGen, randomRs)

rnd_select :: [a] -> Int -> IO [a]
rnd_select xs n = do
    g <- newStdGen
    let is = take n $ randomRs (0, length xs-1) g
    return $ map ((!!) xs) is

main :: IO ()
main = rnd_select "abcdefgh" 3 >>= putStrLn
