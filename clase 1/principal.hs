doble:: Num a => a -> a
doble x = 2 * x


suma:: Int -> Int -> Float
suma x y = fromIntegral( x + y)

cuadrado:: Num a => a -> a
cuadrado x = x ^ 2

raiz :: Floating a => a -> a -> a
raiz x1 x2 = sqrt (cuadrado(x1) + cuadrado(x2))

constante8:: Num p1 => p2 -> p1
constante8 x = 8

pepe x = if x >= 0 then x else -x

