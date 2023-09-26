-- Punto 1
--f(n) = 2n

doble:: Int -> Int
doble 0 = 0 --D1
doble n = 2 + doble (n-1) -- D2


-- f(n) = 3n
-- 3 * 3 ...

potencia :: Int -> Int
potencia 0 = 1
potencia n = 3 * potencia(n-1)

-- Sumatoria
sumar :: Int -> Int
sumar 0 = 0
sumar n = 1 + sumar(n-1)



-- Punto 2
-- Probar por induccion:

--a )
-- f(n) = 2 x n
-- f(0) = 2 x 0 = 0 = D1
-- f(n+1) = 2 + doble (n+1-1) = 
-- f(1+1) = 2 + doble (1+1-1) = 2
-- f(1+1) = doble (0) = 0








