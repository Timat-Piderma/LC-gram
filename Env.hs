module Env where
import Data.Map as Map

import TypeSystem as TS 
import AbsGram as Abs
import GHC.Exts.Heap (StgInfoTable(entry))
import Distribution.Compat.Lens (_1)

type EnvT = Map.Map String EnvEntity

data EnvEntity = Variable {
    name :: String,
    pos :: (Int, Int),
    btype :: Type
}
    deriving (Show, Read)

emptyEnv :: EnvT
emptyEnv = Map.empty

makeVar :: String -> (Int, Int) -> Type -> EnvEntity
makeVar varName varPos varType = Variable varName varPos varType

-- inserts only if not already in the environment
insertVar :: String -> (Int, Int) -> Type -> EnvT -> EnvT
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

getVarType :: String -> EnvT -> Type
getVarType varName env = case Map.lookup varName env of
    Just entry  -> btype entry
    Nothing     -> Base ERROR
