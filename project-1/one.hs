findSumMultsThreeFive :: Int -> Int -> Int
findSumMultsThreeFive sum 2 = sum
findSumMultsThreeFive sum n | n `mod` 3 == 0 || n `mod` 5 == 0 = findSumMultsThreeFive (sum + n) (n - 1)
                            | otherwise                        = findSumMultsThreeFive sum (n - 1)

main = putStrLn $ show $ findSumMultsThreeFive 0 999
