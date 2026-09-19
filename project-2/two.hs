fibEvenSum :: Integer -> Integer -> Integer -> Integer
fibEvenSum prevPrev prev sum
  | curr > 4000000 = sum
  | curr `mod` 2 == 0  = fibEvenSum prev curr (sum + curr)
  | otherwise      = fibEvenSum prev curr sum
 where
  curr = prevPrev + prev


main = putStrLn $ show $ fibEvenSum 0 1 0
