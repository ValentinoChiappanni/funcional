-- Punto 1
--f(n) = 2n

doble:: Int -> Int
doble 0 = 0
doble n = 2 + doble (n-1)


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

