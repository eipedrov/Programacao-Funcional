import Text.Printf
--importando uma biblioteca de impressao

prod_t  :: (Float, Float) -> Float
prod_t  t = (*) (fst t) (snd t)
-- funcao que vai receber Float e retornar Float, separando os 
-- primeiros e segundo termos inputados 

custoPeca :: [(Float, Float)] -> Float
custoPeca (x : xs)   | length xs == 0 = prod_t x 
                     | otherwise = (+) (prod_t x) (custoPeca(xs))
-- funcao que vai receber uma array(Float) e retornar um float
-- responsavel por calcular o preco da peca

readFloat :: IO Float
readFloat = readLn

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