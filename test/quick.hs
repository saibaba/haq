import Test.QuickCheck
import Text.Printf
import Haq (haqify)

main :: IO ()

main  = mapM_ (\(s,a) -> printf "%-25s: " s >> a) tests

prop_haq :: String -> Bool 
-- Dropping the "Haq! " string is the same as identity
prop_haq s = drop (length "Haq! ") (haqify s) == id s

tests :: [([Char], IO ())]

tests  = [ ("drop.haq/id",        quickCheck prop_haq)]
