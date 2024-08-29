inc :: Int -> Int
inc x = x + 1

dobro :: Int -> Int 
dobro x = x * 2

quadrado :: Int -> Int
quadrado x = x * x

media :: Int -> Int -> Int
media x y = (x + y) `div` 2

triangulo :: Int -> Int -> Int -> Bool
triangulo x y z | x + y > z = True
                | x + z > y = True
                | y + z > x = True
                | otherwise = False

triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z = sqrt (s * (s - x) * (s - y) * (s - z))
    where s = (x + y + z) / 2

metades :: [Int] -> ([Int], [Int])
metades xs = (take x xs, drop x xs)
                where x = length xs `div` 2

customLast :: [Int] -> Int
customLast xs = head (take 1 y)
                where y = reverse xs

customLast2 :: [Int] -> Int
customLast2 xs = head x
                where x = reverse xs

customInit :: [Int] -> [Int]
customInit xs = reverse (tail x)
                where x = reverse xs

customInit2 :: [Int] -> [Int]
customInit2 xs = take y xs
                where y = length xs - 1

binom :: Int -> Int -> Int
binom n k = let 
                nfact = product [1..n]
                kfact = product [1..k]
                l = product [1..(n-k)]                
                in
                nfact `div` (kfact * l )

xor :: Bool -> Bool -> Bool
xor True b = not b
xor False b = b


safetail :: Num a => [a] -> [a]
safetail [] = []
safetail xs = tail xs

safetail2 :: Num a => [a] -> [a]
safetail2 xs = if null xs then [] else tail xs

safetail3 :: Num a => [a] -> [a]
safetail3 xs | null xs = []
                | otherwise = tail xs

curta :: Num a => [a] -> Bool
curta xs = length xs < 3







