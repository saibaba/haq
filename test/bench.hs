{-# LANGUAGE BangPatterns #-}
module Main where
import Haq (haqify)

import Data.Time.Clock

main = do
    start <- getCurrentTime
    let !r = haqify "hi"
    end <- getCurrentTime
    putStrLn $ "haqify took " ++ show (diffUTCTime end start)
