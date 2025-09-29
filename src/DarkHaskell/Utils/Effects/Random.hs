module DarkHaskell.Utils.Effects.Random where

import Polysemy
import Polysemy.State

import qualified System.Random as Rand

type Random = State Rand.StdGen

-- | Generate a random value
random :: (Member Random r, Rand.Random a) => Sem r a
random = do 
    gen <- get @Rand.StdGen
    let (result, gen') = Rand.random gen
    put gen'
    return result

-- | Generate a random value with a lower and upper bound (inclusive)
randomR :: (Member Random r, Rand.Random a) => (a, a) -> Sem r a
randomR bounds = do 
    gen <- get @Rand.StdGen
    let (result, gen') = Rand.randomR bounds gen
    put gen'
    return result

-- | Alias for @evalState@
runRandom :: Rand.StdGen -> Sem (Random ': r) a -> Sem r a
runRandom = evalState

