# haskell-testing-intro

This repository contains a step by step guide through basic testing in Haskell.
Each commit takes the next step through the guide.
Start by checking out the first commit, and walk through the commits one at a time.

## Step 1; Unit tests

We start by writing three functions:

- `myReverse :: [a] -> [a]`
- `myAbs :: Int -> Int`
- `writeFileDouble :: FilePath -> String -> IO ()`

Next, we write some unit tests for these.
Start by running `stack test --file-watch`.
Complete the examples in `test/LibSpec.hs` such that there are unit tests for each function in `src/Lib.hs`.
Use `shouldBe` to build expectations.

Now that unit tests are done, and we have not found any bugs.
Let us turn to property testing.

## Step 2; Property tests

We continue by thinking of properties of our functions.

Examples are these:

- If we reverse a list with one element, nothing changes.
- The absolute value of a number is always greater than, or equal to, zero.
- The reverse list is of the equal length compared to the original list.
- The square of the absolute value and the square of the original value are the same.

Now complete the property tests for the above properties using the example provided.
Use `shouldSatisfy` as a more general version of `shouldBe`.

Note that the tests fail because we have written partial functions.
Fix the functions so that the tests pass.
