module LibSpec where

import Test.Hspec

import Lib

spec :: Spec
spec = do
    describe "myReverse" $ do
        it "reverses [4,5,2] correctly" $
            myReverse [4, 5, 2] `shouldBe` [2, 5, 4]
        it "does not reverse [4]" $ pending
    describe "myAbs" $ it "negates -5" $ pending
