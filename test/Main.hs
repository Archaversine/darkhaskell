module Main (main) where

import DarkHaskell (dhHello)

import DarkTest.Ciphers.Rot13

import System.Exit (exitFailure)

import Test.QuickCheck

test :: Testable prop => prop -> IO ()
test p = do 
    result <- quickCheckResult p
    case result of 
        Success {} -> pure ()
        _          -> exitFailure

main :: IO ()
main = do 
    dhHello

    test prop_rot13_id
    test prop_rot13_eq
