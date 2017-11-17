module LibSpec where

import Test.Hspec
import Test.QuickCheck

import Lib

spec :: Spec
spec = do
    describe "myReverse" $ do
        it "reverses [4,5,2] correctly" $
            myReverse [4, 5, 2] `shouldBe` [2, 5, 4]
        it "does not reverse [4]" $ myReverse [4] `shouldBe` [4]
        it "does not change a list with one element" $
            property $ \el -> myReverse [el] `shouldBe` [(el :: Int)]
    describe "myAbs" $ do
        it "negates -5" $ myAbs (-5) `shouldBe` 5
        it "does not negate 4" $ myAbs 4 `shouldBe` 4
    describe "writeFileDouble" $ do
        it "writes 'stringstring' to file when given 'string'" $ do
            writeFileDouble "testpath.txt" "string"
            contents <- readFile "testpath.txt"
            contents `shouldBe` "stringstring"
