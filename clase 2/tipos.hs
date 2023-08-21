doble :: Int -> Int
doble x = 2 * x


-- Punto 1
-- sumaTerna: dada una terna de enteros, calcula la suma de sus tres elementos.

sumaTerna' ::  (Int,Int,Int) -> Int
sumaTerna' (x,y,z) = x + y + z

sumaTerna :: (Int,Int,Int) -> Int
sumaTerna terna = fst3 terna + snd3 terna + trd3 terna

fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x

snd3 :: (a,b,c) -> b
snd3 (_,y,_) = y

trd3 :: (a,b,c) -> c
trd3 (_,_,z) = z

-- Punto 2
-- todoMenor: dadas dos ternas de números reales, decide si es cierto que cada coordenada de la primera es menor a la
-- coordenada correspondiente de la segunda.

todoMenor :: (Float,Float,Float) -> (Float,Float,Float)  -> Bool
todoMenor (x1,y1,z1) (x2,y2,z2) = x1 < x2 && y1 < y2 && z1 < z2

-- Punto 3
-- posicPrimerPar: dada una terna de enteros, devuelve la posición del primer número par si es que hay alguno, y
-- devuelve 4 si son todos impares.

posicPrimerPar :: (Int,Int,Int) -> Int
posicPrimerPar (x,y,z) | even x = 1
                       | even y = 2
                       | even z = 3
                       | otherwise = 4


-- Punto 4
-- crearPar :: a -> b -> (a, b): crea un par a partir de sus dos componentes dadas por separado (debe funcionar para
-- elementos de cualquier tipo).

crearPar :: a -> b -> (a, b)
crearPar x y = (x, y)



-- Punto 5
-- invertir :: (a, b) -> (b, a): invierte los elementos del par pasado como parámetro (debe funcionar para elementos de
-- cualquier tipo).

invertir :: (a, b) -> (b, a)
invertir (x, y) = (y, x)



-- Practica 1

-- Punto 1

-- Dar un tipo válido para las siguientes expresiones.

-- 1 + 1.0 = el tipo valido es Float

-- 1/2 = el tipo valido es Float

-- div 1 2 = el tipo valido es Int

-- mod 2 3 == 0 = el tipo valido es Boolean

-- (1, True) = el tipo valido es una tubla int y bool


-- Punto 2

-- Dar el tipo de las siguientes funciones.

sucesor :: Num a => a -> a
sucesor x = x + 1


segundo :: a -> b -> b
segundo _ y = y

suma' :: Num a => (a, a) -> a
suma' x = fst x + snd x

repetido :: a -> (a, a)
repetido x = (x, x)

-- Punto 3

-- Dada la siguiente función decir cuáles de las expresiones son correctas y cuáles no.
suma :: Float ->Float ->Float
suma x y = x + y

-- suma (sqrt 2) 3 =  Es verdadera ya que ambas son float. El 3 es float.

-- suma 2.0 3.0 = Es verdadera, ambas son float.

-- suma (mod 4 3) 1.5 = Es falsa, mod da como resultado un int. Por ende int y float no funcionara.

-- suma 0 False = Es falsa, 0 es double, pero false es bool.


-- Punto 4
-- Definir funciones que tengan los siguientes tipos.

f1 :: Int ->Int ->Int ->Int
f1 x y z = x + z + y

f3 :: (a,b) ->c ->(c,b,a)
f3 (x,z) y = (y,z,x)