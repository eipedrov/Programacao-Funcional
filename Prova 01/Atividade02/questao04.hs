-- A função primo recebe valores inteiros onde vai fazer a comparação
-- da quantidade de divisores que o valor inteiro possui, se o valor 
-- poussuir 2 divisores vai retornar "eh inteiro" se não "não eh inteiro"

primo :: Int -> Int -> Int -> IO ()
primo n d c = do

    -- let t | c > 10    = half
    --       | otherwise = n

    if (c <= n) 
        then do
            if(rDiv == 0)
                then primo n (d+1) (c+1)
                else primo n d (c+1)
        else do
            if (d == 2)
                then putStr(show(n) ++ " eh primo\n")
                else putStr(show(n) ++ " nao eh primo\n")
    where
        half = (n `div` 2)
        rDiv = n `mod` c

-- na função loop e onde colocamos a condição caso o valor inteiro inputado
-- seja maior que 100, assim pedimos para colocar um valor entre 0 e 100

loop :: IO ()
loop = do
    number <- readLn :: IO Int
    if (number >= 0 && number <= 100)
        then primo number 0 1
        else do
            putStr "atribua um valor entre 0 e 100\n"
            loop

main = do loop
