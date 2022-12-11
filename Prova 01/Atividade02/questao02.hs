-- A função quad ira receber 2 valores do tipo inteiro e retornar
-- uma string que dirá em qual quadrante o ponto está, baseando-se
-- se o primeiro e o segundo valor são maiores ou menores que 0

quad :: (Int, Int) -> String
quad t | (fst(t) >  0 && snd(t) > 0) = "primeiro quadrante\n"
       | (fst(t) >  0 && snd(t) < 0) = "quarto quadrante\n"
       | (fst(t) <  0 && snd(t) < 0) = "terceiro quadrante\n"
       | (fst(t) <  0 && snd(t) > 0) = "segundo quadrante\n"
       | (fst(t) == 0 || snd(t) == 0) = "sair"

-- O lopp irá receber todos os valores inputados e só ira parar quando
-- o valor 0 for inserido, que é a condição para o loop se encerar.

loop :: IO ()
loop = do
    putStr "Digite uma Coordenada: \n"
    putStr "x: "
    x <- readLn :: IO Int
    putStr "y: "
    y <- readLn :: IO Int
    let resposta = quad (x, y)
    if resposta /= "sair"
        then do
            putStr resposta
            loop
        else putStr "\n"

main = do loop

