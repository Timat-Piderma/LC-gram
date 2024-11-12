module Env where
import Data.Map as Map

type EnvT = Map.Map String EnvEntity

data EnvEntity = Variable {
    varName :: String,
    varPos :: (Int, Int)
}
    deriving (Show, Read)

emptyEnv :: EnvT
emptyEnv = Map.empty

makeVar :: String -> (Int, Int) -> EnvEntity
makeVar varName varPos = Variable varName varPos

-- inserts only if not already in the environment
insertVar :: String -> (Int, Int) -> EnvT -> EnvT
insertVar varName varPos env = if containsVar varName env
    then env
    else Map.insert varName (makeVar varName varPos) env 

containsVar :: String -> EnvT -> Bool
containsVar varName env = 
    case Map.lookup varName env of
        Just _  -> True  
        Nothing -> False  

getVarPos :: String -> EnvT -> (Int, Int)
getVarPos varName env = case Map.lookup varName env of
    Just entry -> varPos entry
    Nothing     -> (0,0)