module ErrS where

import TypeSystem as TS
import Env as E

mkAssignmentErrs :: Type -> Type -> (Int, Int) -> [String]
mkAssignmentErrs t1 t2 pos
  | isERROR t1 && isERROR t2 = [ mkSerr t1 pos, mkSerr t2 pos]
  | isERROR t1 = [ mkSerr t1 pos]
  | isERROR t2 = [ mkSerr t2 pos]
  | sup t1 t2 == t1 = []
  | otherwise = [ mkSerr (Base (ERROR ("Type mismatch: " ++ typeToString t1 ++ " and " ++ typeToString t2))) pos]

mkSerr :: Type -> (Int, Int) -> String
(mkSerr (Base (ERROR s))) (a,b) = "[" ++ show a ++ ":" ++ show b ++ "] " ++ s  ;
mkSerr _ _ = "Internal Error" -- Should never happen

mkIfErrs :: Type -> [String] -> (Int, Int) -> [String]
mkIfErrs t errs pos = case t of
  Base (ERROR e) ->  mkSerr (Base (ERROR (e ++ " in if guard expression"))) pos : errs
  Base BOOL -> errs
  _ -> mkSerr (Base (ERROR "Error: guard not bool")) pos : errs

mkDeclErrs :: Type -> Type -> EnvT -> String -> (Int, Int) -> [String]
mkDeclErrs t1 t2 env varName pos
    | containsEntry varName env = [mkSerr (Base (ERROR ("Variable '" ++ varName ++ "' already declared at: " ++ show (getVarPos varName env)))) pos] 
    | isERROR t1 && isERROR t2 = [ mkSerr t1 pos , mkSerr t2 pos]
    | isERROR t1 = [ mkSerr t1 pos]
    | isERROR t2 = [ mkSerr t2 pos]
    | sup t1 t2 == t1 = []
    | otherwise = [ mkSerr (Base (ERROR ("Type mismatch: can't convert " ++ typeToString t2 ++ " to " ++ typeToString t1))) pos]

mkArrayDeclErrs :: Type -> EnvT -> String -> (Int, Int) -> [String]
mkArrayDeclErrs indexType env varName pos
    | containsEntry varName env = [mkSerr (Base (ERROR ("Variable '" ++ varName ++ "' already declared at: " ++ show (getVarPos varName env)))) pos]
    | sup indexType (Base INT) /= Base INT = [ mkSerr (Base (ERROR "Error: array index must be an integer")) pos]
    | otherwise = [] 

mkParamErrs :: String -> String -> EnvT -> (Int, Int) -> [String]
mkParamErrs parName funcName env pos
    | containsEntry parName env = [mkSerr (Base (ERROR ("Duplicate paramater '" ++ parName ++ "' in function declaration: '" ++ funcName ++ "'"))) pos]
    | otherwise = []

mkFuncErrs :: [String] -> String -> [String]
mkFuncErrs errs funcName = map (++ " inside function '" ++ funcName ++ "'") errs

mkReturnErrs :: EnvT -> Type -> (Int, Int) -> [String]
mkReturnErrs env retType pos
    | getVarType "return" env == retType = []
    | containsEntry "return" env = [mkSerr (Base (ERROR ("Error: the return value " ++ typeToString retType ++" is not " ++ typeToString (getVarType "return" env)))) pos]
    | otherwise = [ mkSerr (Base (ERROR "Error: return statement outside function")) pos]

mkFuncCallErrs :: String -> [Type] -> EnvT -> (Int, Int) -> [String]
mkFuncCallErrs funcName params env pos
    | containsEntry funcName env && (params == getFuncParams funcName env) = []
    | containsEntry funcName env && (length params /=  length (getFuncParams funcName env)) = [mkSerr (Base (ERROR ("Error: function '" ++ funcName ++ "' expects " ++ show (length (getFuncParams funcName env)) ++ " parameters"))) pos]
    | containsEntry funcName env = mkFuncCallParamErrs funcName params (getFuncParams funcName env) pos
    | otherwise = [] -- If the function has not been declared it will be caught by the type checker

mkFuncCallParamErrs :: String -> [Type] -> [Type] -> (Int, Int) -> [String]
mkFuncCallParamErrs _ [] [] _= []
mkFuncCallParamErrs funcName (x:xs) (y:ys) pos
    | x == y    = mkFuncCallParamErrs funcName xs ys pos
    | otherwise = mkSerr (Base (ERROR ("Error: can't match " ++ typeToString x ++ " with expected type " ++ typeToString y ++ " in function '" ++ funcName ++ "' call"))) pos : mkFuncCallParamErrs funcName xs ys pos