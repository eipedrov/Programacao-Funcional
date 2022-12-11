distancia :: Float -> Float -> Float -> Float -> Float
distancia x1 y1 x2 y2 = sqrt ((x2-x1)^2 + (y2-y1)^2)
-- funcao com a formula da distancia entre pontos

-- execucao do codigo
main = do 
    putStr("Qual os valores do primeiro ponto? (x1,y1) \n")
    x1 <- readLn :: IO Float
    y1 <- readLn :: IO Float
    putStr("Qual os valores do segundo ponto? (x2,y2) \n")
    x2 <- readLn :: IO Float
    y2 <- readLn :: IO Float
    
    let pontos =  distancia x1 y1 x2 y2
    putStr ("A distancia entre os pontos e " ++ show(pontos) ++ "\n")
