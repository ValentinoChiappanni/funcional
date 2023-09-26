-- 1. Decir cuáles de las siguientes expresiones son válidas y dar un tipo válido para ellas.
-- a) Es valida, ya que es una lista vacia
-- []

-- b) Es valida, del tipo fractional
-- [3, 1.0, 2]

-- c) No es valida
-- [2 :: Int, 1.0 , 2]

-- d) No es valida, porque es del tipo bool y tiene una lista dento de otra.
-- [True, [False ]]

-- Punto 2
sumaLista :: [Int] -> Int
sumaLista []     = 0          -- Caso base: lista vacía, suma es 0
sumaLista (x:xs) = x + sumaLista xs  -- Caso recursivo: suma el primer elemento y llama a la función con el resto de la lista


prodLista :: [Int] -> Int
prodLista []     = 1           -- Caso base: lista vacía, producto es 1
prodLista (x:xs) = x * prodLista xs  -- Caso recursivo: multiplica el primer elemento y llama a la función con el resto de la lista


todosPares :: [Int] -> Bool
todosPares []     = True          -- Caso base: lista vacía, todos los elementos son pares por definición
todosPares (x:xs) = (even x) && todosPares xs  -- Caso recursivo: verifica si el primer elemento es par y llama a la función con el resto de la lista

todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales (x:xs) =