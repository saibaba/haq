module Main (main) 
where
import Haq (haqify)

import System.Environment

main :: IO()

main = getArgs >>= print . haqify . head
