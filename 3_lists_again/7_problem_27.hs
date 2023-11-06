comb :: Int -> [a] -> [([a], [a])]
comb 0 xs = [([], xs)]
comb _ [] = []
comb n (x:xs) = ts ++ ds
  where ts = [(x:ys, zs) | (ys, zs) <- comb (n-1) xs]
        ds = [(ys, x:zs) | (ys, zs) <- comb n xs]

group :: [Int] -> [a] -> [[[a]]]
group _ [] = [[]]
group (x:xs) all =
    [y:ys | (y, zs) <- comb x all, ys <- group xs zs]

main :: IO ()
main = do
    print $ take 3 $ group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
    -- [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]

    print $ take 3 $ group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
    -- [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
