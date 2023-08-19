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

todoMenor :: Ord a => (a,a,a) -> (a,a,a) -> Bool
todoMenor (x1,y1,z1) (x2,y2,z2) = x1 < x2 && y1 < y2 && z1 < z2