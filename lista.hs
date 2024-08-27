inc :: Int -> Int
inc x = x + 1

dobro :: Int -> Int 
dobro x = x * 2

quadrado :: Int -> Int
quadrado x = x * x

media :: Int -> Int -> Int
media x y = (x + y) `div` 2

{-
inc (quadrado 5) -> 26
quadrado (inc 5) -> 36
media (dobro 3) (inc 5) -> 6
-}

triangulo :: Int -> Int -> Int -> Bool
triangulo x y z | x + y > z = True
                | x + z > y = True
                | y + z > x = True
                | otherwise = False
