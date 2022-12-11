roda :: Int -> [Int] -> [Int]
roda n xs 
    | n == 0 = xs
    | otherwise = roda (n-1) nova_lista -- local onde e verificado e trocado a posicao da lista e criada uma nova
    where
        nova_lista = tail xs ++ [head xs] -- lista que sera impressa com a nova configuracao, "rotacionada"

-- Input: roda0 2 ==> [] sequencia 3 4 ==> [4,5,6]