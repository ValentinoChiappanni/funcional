-- Decir cuáles de las siguientes expresiones son válidas y dar un tipo válido para ellas.

-- 2 :: Num a => a

-- [] :: [a]
-- [3, 1.0, 2] :: [Float]
-- [2 :: Int , 1.0 , 2] no tipa porque Int no esta en la clase Fractional
-- [True, [False]] no tipa porque el primer elemento es de tipo Bool y el segundo de tipo [Bool]

-- 2. Implementar recursivamente las siguientes funciones.
sumaLista :: [Int] -> Int -- que calcula la suma de todos los elementos de la lista.
sumaLista [] = 0 (R1)
sumaLista (x:xs) = x + sumaLista xs (R2)

-- sumaLista [1] == sumaLista (1:[]) == 1 + sumaLista [] == 1 + 0 == 1

-- Correctitud:
P(xs): sumaLista xs == "la suma de todos los elementos de la lista xs"

-- P(xs): sumaLista xs == x1 + x2 + ... + xn

CB) P([]): sumaLista [] == "la suma de todos los elementos de la lista []"

sumaLista [] == 0 (R1)
"la suma de todos los elementos de la lista []" == 0

PI) P(xs) => P(x:xs)

(:) :: (a -> [a]) -> [a]

HI) sumaLista xs == "la suma de todos los elementos de la lista xs"

Quiero probar sumaLista (x:xs) == "la suma de todos los elementos de la lista (x:xs)"

sumaLista (x:xs) == x + sumaLista xs == x + "la suma de todos los elementos de la lista xs" (R2)


"la suma de todos los elementos de la lista (x:xs)" == x + "la suma de todos los elementos de la lista xs"
sumaLista (x:xs) == x + sumaLista xs

-- sumaLista [1,2,3,4] == 1 + sumaLista [2,3,4]
-- x == 1, xs == [2,3,4]
-- sumaLista [2,3,4] == 2 + sumaLista [3,4]
-- sumaLista [3,4] == 3 + sumaLista [4]
-- sumaLista [4] == 4 + sumaLista []
-- sumaLista [4] == 4 + 0
-- sumaLista [4] == 4

----
"la suma de todos los elementos de la lista (x:xs)" == x + "la suma de todos los elementos de la lista xs"



-- prodLista :: [ Int ] 􀀀> Int que calcula el producto de todos los elementos de la
-- lista.
-- todosPares :: [ Int ] 􀀀> Bool que devuelve True si y solo si todos los elementos
-- de la lista son pares.
-- todosIguales :: [ Int ] 􀀀> Bool que devuelve True si y solo si todos los elementos
-- de la lista son iguales.
-- pertenece :: Eq a => a 􀀀> [a] 􀀀> Bool que toma un elemento x y una lista xs
-- y devuelve True si y solo si x pertenece a xs.

-- 3. Probar por inducción estructural que las funciones implementadas en el ejercicio 2 son
-- correctas.

-- 4. Dadas las siguientes definiciones recursivas probar por inducción la sigiuentes propiedades.

length [] = 0 (L1 )
length (x:xs) = 1 + length xs (L2 )

[] ++ ys = ys (C1)
(x:xs) ++ ys = x : (xs ++ ys) (C2)

reverse [] = [] (R1)
reverse (x:xs) = reverse xs ++ [x] (R2)

-- P(xs): para toda lista ys y para toda lista zs, (xs ++ ys) ++ zs == xs ++ (yz ++ zs)

P(xs): para toda lista ys, length (xs ++ ys) == length xs + length ys

CB) P([]): para toda lista ys, length ([] ++ ys) == length [] + length ys

Sea ys una lista cualquiera.

length ([] ++ ys) ==(C1) length ys
length [] + length ys ==(L1) 0 + length ys == length ys

PI) P(xs) => P(x:xs)

HI) P(xs): para toda lista ys, length (xs ++ ys) == length xs + length ys

Quiero probar P(x:xs): para toda lista ys, length ((x:xs) ++ ys) == length (x:xs) + length ys

length ((x:xs) ++ [ys]) == length (x : (xs ++ ys)) == 1 + length (xs ++ ys) ==(HI) 1 + length xs + length ys

length (x:xs) + length ys == 1 + length xs + length ys

Por lo tanto, por induccion estructural, vale P(xs) para toda lista xs.

-- length ([1,2] ++ [3]) == length [1,2] + length [3]

-- P(xs): length xs == length (reverse xs)

[1..] -> 1: [2..] -<> 1: 2: [3..] -> 1: 2: 3: [4..]