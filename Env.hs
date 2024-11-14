module Env where
import Data.Map as Map

import AbsGram as Abs
import GHC.Exts.Heap (StgInfoTable(entry))

type EnvT = Map.Map String EnvEntity

data EnvEntity = Variable {
    name :: String,
    pos :: (Int, Int),
    btype :: BasicType
}
    deriving (Show, Read)

emptyEnv :: EnvT
emptyEnv = Map.empty

makeVar :: String -> (Int, Int) -> BasicType -> EnvEntity
makeVar varName varPos varType = Variable varName varPos varType

-- inserts only if not already in the environment
insertVar :: String -> (Int, Int) -> BasicType -> EnvT -> EnvT
insertVar varName varPos varType env = if containsVar varName env
    then env
    else Map.insert varName (makeVar varName varPos varType) env 

containsVar :: String -> EnvT -> Bool
containsVar varName env = 
    case Map.lookup varName env of
        Just _  -> True  
        Nothing -> False  

getVarPos :: String -> EnvT -> (Int, Int)
getVarPos varName env = case Map.lookup varName env of
    Just entry  -> pos entry
    Nothing     -> (0,0)

getVarType :: String -> EnvT -> BasicType
getVarType varName env = case Map.lookup varName env of
    Just entry  -> btype entry
    Nothing     -> ERROR

typeToString :: BasicType -> String
typeToString ERROR = "Error"
typeToString INT = "Integer"
typeToString FLOAT = "Double"

sup :: BasicType -> BasicType -> BasicType
sup INT INT     = INT
sup FLOAT INT   = FLOAT
sup INT FLOAT   = FLOAT
sup _ _         = ERROR