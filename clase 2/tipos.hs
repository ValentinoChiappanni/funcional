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
