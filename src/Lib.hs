module Lib
    ( someFunc
    , myReverse
    , myAbs
    , writeFileDouble
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

myReverse :: [a] -> [a]
myReverse [a] = [a]
myReverse (x:xs) = myReverse xs ++ [x]

myAbs :: Int -> Int
myAbs x
    | x < 0 = -x
    | x > 0 = x

writeFileDouble :: FilePath -> String -> IO ()
writeFileDouble path content = writeFile path $ content ++ content
