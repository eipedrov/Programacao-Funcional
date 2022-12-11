import Text.Printf
prod :: Float -> Float -> Float
prod x y = x * y
-- funcao que recebe Float e retorna Float

-- execucao do codigo que pede os inputs e retorna o resultado
main = do
   putStr "Numero do funcionario: "
   funcionarioID <- getLine
   putStr "Horas trabalhadas: "
   horas <- readLn
   putStr "Valor/h: "
   valor <- readLn
   putStrLn ("NUMBER = " ++ funcionarioID)
   printf "SALARY = U$ %.2f\n" (prod horas valor)