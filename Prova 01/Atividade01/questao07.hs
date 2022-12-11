maior :: Float -> Float -> Float
maior a b = (a + b + abs(a - b))/2
-- funcao com a formula que a questao apresenta 

-- execucao 
main = do
   putStr "A: "
   a <- readLn :: IO Float
   putStr "B: "
   b <- readLn :: IO Float
   putStr "C: "
   c <- readLn :: IO Float

   let mab = maior a b
   let mc  = maior mab c
   putStr (show (truncate mc) ++ " eh o maior\n")