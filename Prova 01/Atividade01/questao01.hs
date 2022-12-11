areaCirculo :: Float -> Float
-- funcao
areaCirculo x = (*) 3.14159 (x*x)

-- execucao
main = do
    -- le o raio
    putStr "Digite o raio: "
    raio <- read
    print("A=" ++ show (areaCirculo(raio)) )