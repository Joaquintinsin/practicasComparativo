listaEnterosParesPositivos = [n | n<-[1,2..], mod n 2 == 0]

nOcurrencias :: Int -> [Integer] -> [Integer]
nOcurrencias n [] = []
nOcurrencias n (x:xs)
    | n == 0 = []
    | otherwise = x : (nOcurrencias (n-1) xs)
