alternate :: [Int] -> [Int] -> [Int] -> [Int]
alternate [] [] zs = reverse zs -- reverse e o responsavel por inverter a posicao dos valores na lista
alternate (x:xs) (y:ys) zs = alternate xs ys (x:y:zs)

gera :: Int -> [Int] -- funcao que recebe um inteiro e retorna uma lista com os valores
gera n = alternate neg pos []
    where
        pos = [x | x <- [1..n]]
        neg = map negate pos -- responsavel por pegar o range de 1 a n e tornar em um numero negativo 

-- Input: chamar a função gera:
-- inputar o valor inteiro n : [1,-1,2,-2,3,-3, ... ,n, -n]