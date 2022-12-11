sequencia :: Int -> Int -> [Int] 
sequencia n m = [x | x <- [m..(m+n-1)]] -- responsavel por fazer a impressao como e pedida


-- Input: chamar a função sequencia:
-- inputar os valores inteiros de m e n : sequencia 3 4 ==> [4,5,6]