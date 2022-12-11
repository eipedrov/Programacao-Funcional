-- A função bonus irá receber valores do tipo float (salário e bonus) 
-- e retornar um tipo float (salário final)

bonus :: Float -> Float-> Float 
bonus x y = x + y

-- O main vai receber os valores do sálario e do bonus fazer a verificação
-- e retornar o valor final do salário.

main = do
    print ("Qual o salario do Funcionario?")
    x <- readLn :: IO Float
    print ("Quantos pontos ele tem?")
    y <- readLn :: IO Int 

    let z | y <= 10 = 100.0
          | y <= 20 = 200.0
          | y <= 30 = 300.0
          | y <= 40 = 400.0
          | otherwise = 500.0

    print ("O total do seu salario eh de " ++ show (bonus x z))