# haskell-testing-intro

## Step 1; Unit tests

We start by writing three functions:

- `myReverse :: [a] -> [a]`
- `myAbs :: Int -> Int`
- `writeFileDouble :: FilePath -> String -> IO ()`

Next, we write some unit tests for these.
Start by running `stack test --file-watch`.
Complete the examples in `test/LibSpec.hs` such that there are unit tests for each function in `src/Lib.hs`.
Use `shouldBe` to build expectations.

