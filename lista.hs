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
