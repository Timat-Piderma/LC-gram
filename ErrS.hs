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
    | containsVar varName env = [mkSerr (Base (ERROR ("Variable '" ++ varName ++ "' already declared at: " ++ show (getVarPos varName env)))) pos] 
    | isERROR t1 && isERROR t2 = [ mkSerr t1 pos , mkSerr t2 pos]
    | isERROR t1 = [ mkSerr t1 pos]
    | isERROR t2 = [ mkSerr t2 pos]
    | sup t1 t2 == t1 = []
    | otherwise = [ mkSerr (Base (ERROR ("Type mismatch: can't convert " ++ typeToString t2 ++ " to " ++ typeToString t1))) pos]

mkArrayDeclErrs :: Type -> EnvT -> String -> (Int, Int) -> [String]
mkArrayDeclErrs indexType env varName pos
    | containsVar varName env = [mkSerr (Base (ERROR ("Variable '" ++ varName ++ "' already declared at: " ++ show (getVarPos varName env)))) pos]
    | sup indexType (Base INT) /= Base INT = [ mkSerr (Base (ERROR "Error: array index must be an integer")) pos]
    | otherwise = [] 