import Data.List -- import de uma bibliota que auxilia a remover itens duplicados de uma lista

segunda :: Int -> [Int] -> Int -- funcao responsavel responsavel por contar a ocorrencia de numeros 
segunda k [] = 0 
segunda n (x:xs) 
    | n == x = 1 + segunda n xs
    | otherwise = segunda n xs

primeira :: [Int] -> [(Int, Int)]
primeira xs = nub (zip xs (map f xs)) -- nub e responsavel por fazer a remocao do item duplicado
    where
        f :: Int -> Int
        f x = segunda x xs -- função anonima

-- Input: primeira [2 1 2 4 5] ==> [(2, 2), (1, 1), (4,1), (5,1)]