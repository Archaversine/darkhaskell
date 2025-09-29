#!/usr/bin/env bash

cabal haddock
cp -rf dist-newstyle/build/x86_64-linux/ghc-9.10.3/darkhaskell-0.1.0.0/doc/ .

echo "Docs updated!"

