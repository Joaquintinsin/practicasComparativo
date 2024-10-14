-- 11. De un ejemplo de una función perezosa y una aplicación interesante de ella. 
--    La sintaxis para definir una función perezosa es: f un lazy {F X1 ...Xn }.

linf :: [Int]
linf = [1,2..]

f :: [Int] -> Int
f [] = 0
f (x:xs) = if x == 15 then x else f xs
