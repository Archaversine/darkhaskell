module DarkHaskell.ASCII.NameGenerator where

import DarkHaskell.Utils.Effects.Random

import Polysemy

import qualified System.Random as Rand

randomName :: Member Random r => Sem r String
randomName = do 
    idx <- randomR (0, nameLength - 1)
    let part1 = names !! idx
    part2 <- randomR @_ @Int (0, 99999)
    
    return (part1 ++ show part2)

randomNameIO :: IO String
randomNameIO = do 
    idx <- Rand.randomRIO (0, nameLength - 1)
    let part1 = names !! idx
    part2 <- Rand.randomRIO @Int (0, 99999)
    
    return (part1 ++ show part2)

names :: [String]
names =
    [ "shadow_rift"
    , "neon_echo"
    , "crystal_breach"
    , "silent_valley"
    , "phantom_strike"
    , "rusted_legend"
    , "frostbound_hero"
    , "mystic_haven"
    , "iron_reckoning"
    , "void_runner"
    , "blaze_legacy"
    , "twisted_wings"
    , "emberfall"
    , "cyber_shroud"
    , "ancient_ruins"
    , "pixel_voyage"
    , "shattered_dreams"
    , "darkened_sky"
    , "cobalt_quest"
    , "endless_night"
    , "savage_sentinel"
    , "lost_tides"
    , "spectral_hunter"
    , "thunder_haven"
    , "ghostlight_realm"
    , "velvet_chaos"
    , "starborn_tribe"
    , "broken_crown"
    , "frozen_echoes"
    , "twilight_serpent"
    , "dusk_stalker"
    , "molten_path"
    , "cosmic_voyager"
    , "ironclad_warrior"
    , "neon_tide"
    , "shadowborn_king"
    , "warped_reality"
    , "flamebound"
    , "crystal_shard"
    , "thunderstrike_legacy"
    , "phantom_valley"
    , "rusted_empire"
    , "frostbitten_veil"
    , "mystic_shadows"
    , "voidwalker"
    , "blaze_rider"
    , "shattered_horizon"
    , "darkspire"
    , "cobalt_rangers"
    , "endless_abyss"
    , "savage_realm"
    , "lost_relic"
    , "spectral_veil"
    , "thunderblade"
    , "ghostwind"
    , "velvet_night"
    , "starfire_legend"
    , "broken_path"
    , "frozen_veil"
    , "twilight_fury"
    , "dusk_blade"
    , "molten_core"
    , "cosmic_storm"
    , "iron_legacy"
    , "neon_shadow"
    , "shadowhunter"
    , "warped_dream"
    , "flameheart"
    , "crystal_forge"
    , "thunderfall"
    , "phantom_quest"
    , "rusted_valley"
    , "frostfire"
    , "mystic_tide"
    , "void_legend"
    , "blaze_shadow"
    , "shattered_realm"
    , "dark_valley"
    , "cobalt_blade"
    , "endless_fury"
    , "savage_quest"
    , "lost_forge"
    , "spectral_storm"
    , "thunder_reign"
    , "ghost_flame"
    , "velvet_storm"
    , "starborn_quest"
    , "broken_legend"
    , "frozen_storm"
    , "twilight_shadow"
    , "dusk_fury"
    , "molten_legend"
    , "cosmic_veil"
    , "iron_shadow"
    , "neon_quest"
    , "shadow_forge"
    , "warped_legacy"
    , "flame_rift"
    , "crystal_quest"
    , "thunder_rift"
    ]

nameLength :: Int
nameLength = length names
