areaTriangulo :: Double -> Double -> IO ()
areaTriangulo a c = do 
    let area = (a * c) / 2    
    putStr ("A area do triangulo retangulo e " ++ show(area) ++ "\n")    
-- funcao que calcula a area do triangulo retangulo - A

areaCirculo :: Double -> IO ()
areaCirculo c = do 
    let area = 3.14159 * (c * c)
    putStr("A area do circulo e " ++ show (area) ++ "\n")
-- funcao que calcula a area do circulo - B

areaTrapezio :: Double -> Double -> Double -> IO ()
areaTrapezio a b c = do 
    let area = (a + b) * c / 2
    putStr ("A area do trapezio e " ++ show(area) ++ "\n")
-- funcao de calcula a area do trapezio - C

areaQuadrado :: Double -> IO ()
areaQuadrado b = do
    let area = (b * b)
    putStr("A area do quadrado e " ++ show(area) ++ "\n")
-- funcao que calcula a area do quadrado - D

areaRetangulo :: Double -> Double -> IO ()
areaRetangulo a b = do 
    let area = (a * b)
    putStr("A area do retangulo e " ++ show(area) ++ "\n")
-- funcao que calcula a area do retangulo - E
main = do
    putStrLn "Digite A: "
    a <- readLn :: IO Double
    putStrLn "Digite B: "
    b <- readLn :: IO Double
    putStrLn "Digite C: "
    c <- readLn :: IO Double
    areaTriangulo a c
    areaCirculo c
    areaTrapezio a b c
    areaQuadrado b
    areaRetangulo a b