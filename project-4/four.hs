isPalindrome :: Int -> Bool
isPalindrome x = let strX = show x in strX == reverse strX

allProducts :: [Int] -> [Int] -> [Int]
allProducts xs ys = [x * y | x <- xs, y <- ys]

allPalindromes :: [Int]
allPalindromes = filter isPalindrome (allProducts [100..999] [100..999])

main = putStrLn $ show (maximum allPalindromes)
