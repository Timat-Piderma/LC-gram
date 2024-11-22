module Env where
import Data.Map as Map

import TypeSystem as TS 
import AbsGram as Abs

type EnvT = Map.Map String EnvEntity

data EnvEntity = Variable {
    name :: String,
    pos :: (Int, Int),
    btype :: Type,
    params :: [Type]
}
    deriving (Show, Read)

emptyEnv :: EnvT
emptyEnv = Map.empty

makeVar :: String -> (Int, Int) -> Type -> EnvEntity
makeVar varName varPos varType = Variable varName varPos varType []

-- inserts only if not already in the environment
insertVar :: String -> (Int, Int) -> Type -> EnvT -> EnvT
insertVar varName varPos varType env = if containsEntry varName env
    then env
    else Map.insert varName (makeVar varName varPos varType) env 

insertFunc :: String -> (Int, Int) -> Type -> [Type] -> EnvT -> EnvT
insertFunc funcName funcPos funcType funcParams env = if containsEntry funcName env
    then env
    else Map.insert funcName (Variable funcName funcPos funcType funcParams) env

containsEntry :: String -> EnvT -> Bool
containsEntry varName env = 
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
    Nothing     -> Base (ERROR ("Variable '" ++ varName ++ "' not declared"))

getFuncType :: String -> EnvT -> Type 
getFuncType funcName env = case Map.lookup funcName env of
    Just entry -> btype entry
    Nothing     -> Base (ERROR ("Function '" ++ funcName ++ "' not declared"))

getFuncParams :: String -> EnvT -> [Type]
getFuncParams funcName env = case Map.lookup funcName env of
    Just entry -> params entry
    Nothing     -> [Base (ERROR ("Function '" ++ funcName ++ "' not declared"))]