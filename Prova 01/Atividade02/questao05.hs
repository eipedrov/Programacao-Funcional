import Text.Printf

-- a função prod_t ira receber valores do tipo float e retornar 
-- um valor do tipo float e distinguir os primeiros e segundos inputs 

prod_t  :: (Float, Float) -> Float
prod_t  t = (*) (fst t) (snd t)

-- a função custoPeca vai receber valor do tipo float e retornar valor
-- do tipo float onde serão definidos os valores da peça

custoPeca :: [(Float, Float)] -> Float
custoPeca (x : xs)   | length xs == 0 = prod_t x 
                     | otherwise = (+) (prod_t x) (custoPeca(xs))

readFloat :: IO Float
readFloat = readLn

-- no main, iremos inputar os valores pedidos e retornar o que a questão pede

main = do
   putStr "Peca 1\n"
   putStr "id:"
   id1  <- readLn :: IO Float 
   putStr "quantidade:"
   qtd1 <- readLn :: IO Float
   putStr "preco:"
   prc1 <- readLn :: IO Float
   putStr "Peca 2\n"
   putStr "id:"
   id2  <- readLn :: IO Float
   putStr "quantidade:"
   qtd2 <- readLn :: IO Float
   putStr "preco:"
   prc2 <- readLn :: IO Float
   printf "VALOR A PAGAR: R$ %.2f\n" (custoPeca [(qtd1, prc1), (qtd2, prc2)])