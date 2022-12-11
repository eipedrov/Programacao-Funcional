-- produto de uma tupla (a, b)
-- return a * b
prod_t  :: (Float, Float) -> Float
prod_t  t = (*) (fst t) (snd t)

-- soma de um array de numeros
soma_a  :: [Float] -> Float
soma_a (x : xs) | length xs == 0 = x
                | otherwise = x + soma_a xs

-- Somatorio de tuplas do tipo
-- dado um array de tuplas t: t = [(a,b),(c,d),(e,f)]
-- (a * b) + (c * d)...
soma :: [(Float, Float)] -> Float
soma (x : xs)   | length xs == 0 = prod_t x
                | otherwise = prod_t x + soma(xs)
media :: Float -> Float -> Float
media x y   | y == 0 = -1
            | otherwise = (/) x y

main = do
    putStr "Digite a nota 1: "
    n1 <- readLn
    putStr "Digite a nota 2: "
    n2 <- readLn
    putStr "Digite a nota 3: "
    n3 <- readLn
    let notas = [n1, n2, n3]
    let pesos = [2, 3, 5]
    let t     = zip notas pesos
    let k     = soma_a pesos
    print("MEDIA = " ++ show ( media (soma t ) k ))