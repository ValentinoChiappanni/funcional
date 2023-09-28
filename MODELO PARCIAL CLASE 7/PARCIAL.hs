-- Programación Funcional - Primer Parcial
-- Modificar nombre del archivo por "nombre-apellido.hs"

-------------- Ejercicio 1 -----------------

-- Definir una función con el siguiente tipo
f1 :: Num a => (a -> b, a -> c) -> a -> (c, b)
f1 (f, g) x = (g x, f x)


-- ejercicio extra:
--f2 :: Num a => (a -> b, [Int] -> c) -> a -> (c,b)

f2 (f, g) x = (g [1::Int], f (x+1))


--length :: [a] -> Int

--(+) :: Num a => a -> a -> a

--fst :: (a,b) -> a

-------------- Ejercicio 2 -----------------

-- a) Definir recursivamente una función "repetir" que dado un caracter c y un entero n
-- devuelve el string que tiene el caracter c repetido n veces.
-- Ej: repetir 'a' 3 == "aaa" ('a':'a':'a':[])
--     repetir 'a' 2 == "aa" ('a':'a':[])

repetir :: Char -> Int -> String
repetir _ 0 = "" --(R1)
repetir c n = c : repetir c (n-1) --(R2)

-- b) Probar por inducción la siguiente propiedad:
-- P(n): length (repetir 'a' n) == n

-- length :: [a] -> Int
-- length [] = 0                 (L1)
-- length (_:xs) = 1 + length xs (L2)

CB) P(0): length (repetir 'a' 0) == 0

length (repetir 'a' 0) ==(R1) length "" ==(L1) 0

PI) P(n) => P(n+1)
HI) P(n): length (repetir 'a' n) == n

quiero probar P(n+1): length (repetir 'a' (n+1)) == n+1

length (repetir 'a' (n+1)) ==(R2) length ('a' : repetir 'a' (n+1-1))
== length ('a' : repetir 'a' n) ==(L2) 1 + length (repetir 'a' n)
==(HI) 1 + n == n+1

Luego, por inducción, vale P(n) para todo n natural

-------------- Ejercicio 3 -----------------

f :: [Int]  -> Int
f []                    = 0
f [_]                   = 0
f (_:y:xs)              = max (f xs) y

-- reducir la expresión f [f [1],3,4,2] con orden normal.

f [f [1],3,4,2] -> max (f [4,2]) 3 -> max (max (f []) 2) 3
-> max (max 0 2) 3 -> max 2 3 -> 3

--otro ejercicio extra
--lo mismo pero con orden aplicativo

f [f [1],3,4,2] -> f [0,3,4,2] -> max (f [4,2]) 3 -> max (max (f []) 2) 3
-> max (max 0 2) 3 -> max 2 3 -> 3

-------------- Ejercicio 4 -----------------

-- verificar la siguiente igualdad: uncurry (*) . (\x -> (2,x)) == (2*)