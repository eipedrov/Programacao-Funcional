contador :: Int -> String -> Int
-- nSearch: Numero a ser procurado
-- nString: Numero em formao de string
contador nSearch nString = 
    let found = [head(show(nSearch)) == x | x <- nString]
        onlyFound = [x | x <- found, x]
    in length onlyFound

final :: Int -> Int -> [Int]
final a b = let lista = [a..b] 
                _0 = sum [contador 0 (show x) | x <- lista]
                _1 = sum [contador 1 (show x) | x <- lista]
                _2 = sum [contador 2 (show x) | x <- lista]
                _3 = sum [contador 3 (show x) | x <- lista]
                _4 = sum [contador 4 (show x) | x <- lista]
                _5 = sum [contador 5 (show x) | x <- lista]
                _6 = sum [contador 6 (show x) | x <- lista]
                _7 = sum [contador 7 (show x) | x <- lista]
                _8 = sum [contador 8 (show x) | x <- lista]
                _9 = sum [contador 9 (show x) | x <- lista]
            in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9]

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    putStrLn(show(final a b))

-- Input: main 
--      1 
--      10
-- Saida : [1,2,1,1,1,1,1,1,1,1]