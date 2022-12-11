-- A função ordena vai receber um array do tipo float e vai retornar
-- uma arrey do tipo float, fazendo a organização dos valores inputados
-- onde o "lado a" será o maior valor e o "lado c" o menor, isso será
-- feito usando "menor" e "maior"

ordena :: [Float] -> [Float]
ordena [] = []
ordena (x : xs) = ordena maior ++ [x] ++ menor
                  where menor = [a | a <- xs, a <= x]
                        maior = [a | a <- xs, a > x]

-- a função tipo triangulo é onde os valores de a b c serão comparados
-- e baseado nessas comparações dirá qual e o tipo de triangulo ou se
-- não é um triangulo.

tipoTriangulo :: [Float] -> IO ()
tipoTriangulo lados = do
    if      (a >= b + c)
        then putStr "Não forma triangulo\n"
    else if (a^2 == (b^2 + c^2))
        then putStr "Triangulo Retangulo\n"
    else if (a^2 >  (b^2 + c^2))
        then putStr "Triangulo Obtusangulo\n"
    else if (a^2 <  (b^2 + c^2))
        then putStr "Triangulo Acutangulo\n"
    else putStr ""

    if      (a == b && b == c)
        then putStr "Triangulo Equilatero\n"
    else if (a == b || b == c || a == c)
        then putStr "Triangulo Isosceles\n"
    else putStr ""
    where
        a = lados !! 0
        b = lados !! 1
        c = lados !! 2

-- o main irá receber os 3 valores dos lados e irá retornar o tipo
-- do triangulo

main = do
    putStr "Digite 3 valores:\n"
    putStr "n1: "
    n1 <- readLn :: IO Float
    putStr "n2: "
    n2 <- readLn :: IO Float
    putStr "n3: "
    n3 <- readLn :: IO Float
    let vOrd = ordena([n1, n2, n3])
    tipoTriangulo vOrd
    putStr ""




