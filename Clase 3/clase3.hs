-- 1.Implementar recursivamente la función esPar :: Int -> Bool
--que determine si un número natural es par.

esPar :: Int -> Bool
esPar 0 = True
esPar n = not (esPar (n-1))


--2. Escribir una función recursiva para determinar si un número
--natural es múltiplo de 3.

esMultiploDe3 :: Int -> Bool
esMultiploDe3 0 = True --caso base
esMultiploDe3 n | n <= 2 = False-- mas casos base
esMultiploDe3 n = esMultiploDe3 (n-3)

--3. Implementar la función sumaImpares :: Int -> Int que dado
-- n ∈ N sume los primeros n números impares. Ej:
-- sumaImpares 3 1+3+5 9.

sumaImpares :: Int -> Int
sumaImpares 0 = 0
sumaImpares n = rec + nesimoImpar n
 --sumaImpares n = rec + 2*n-1
 where rec = sumaImpares (n-1)

nesimoImpar :: Int -> Int
nesimoImpar 1 = 1
nesimoImpar n = nesimoImpar (n-1) + 2


-- Practica 2

-- 1. Implementar recursivamente las siguientes funciones.
-- f(n) = 2n
doble :: Int -> Int
doble 0 = 0
doble n = 2 * doble (n-1)
-- Probamos por induccion, probar que es correcta, ver que calcule el doble de n.
--p(n): doble n == 2*n

-- Caso base
--p(0): doble 0 == 2*0
--doble 0 == (Casobase1) 0
--2*0 = 0

-- paso induc..
--p(n) => p(n+1)
--p(n) : doble n == 2*N

--Tengo que probar p(n+1): doble (n+1) == 2*(n+1)

--doble (n+1) == doble (n+1-1) + 2 == doble n + 2 == 2*n+2
--2*(n+1) == 2*n +2




--f(n) = 3n
f3 :: Int -> Int
f3 0 = 1
f3 n = 3 * f3 (n-1)


-- f(n) = 1 ^2 + 2 ^2 + ... + n ^2
sumatoriaCuadrado :: Int -> Int
sumatoriaCuadrado 0 = 0
sumatoriaCuadrado n = n ^ 2 + sumatoriaCuadrado (n-1)






















