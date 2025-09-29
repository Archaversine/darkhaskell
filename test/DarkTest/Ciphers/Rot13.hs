module DarkTest.Ciphers.Rot13 where

import Data.Char (isLetter, isAscii)

import DarkHaskell.Ciphers.Rot13 (rot13)

prop_rot13_id :: String -> Bool
prop_rot13_id xs = rot13 (rot13 xs) == xs

prop_rot13_eq :: String -> Bool
prop_rot13_eq xs 
    | any (\x -> isLetter x && isAscii x) xs = rot13 xs /= xs 
    | otherwise       = rot13 xs == xs

