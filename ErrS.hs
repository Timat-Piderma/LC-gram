module ErrS where

import TypeSystem as TS
import Env as E

mkAssignmentErrs :: Type -> Type -> [String]
mkAssignmentErrs t1 t2
  | isERROR t1 && isERROR t2 = [ mkSerr t1 , mkSerr t2]
  | isERROR t1 = [ mkSerr t1]
  | isERROR t2 = [ mkSerr t2]
  | sup t1 t2 == t1 = []
  | otherwise = [ "Type mismatch: " ++ typeToString t1 ++ " and " ++ typeToString t2]

mkSerr :: Type -> String
mkSerr (Base (ERROR s)) = s
mkSerr _ = "Internal Error" -- Should never happen

mkIfErrs :: Type -> [String] -> [String]
mkIfErrs t errs = case t of
  Base (ERROR e) ->  e : errs
  Base BOOL -> errs
  _ -> "Error: guard not bool" : errs

mkDeclErrs :: Type -> Type -> EnvT -> String -> [String]
mkDeclErrs t1 t2 env varName
    | containsVar varName env = ["Variable '" ++ varName ++ "' already declared at: " ++ show (getVarPos varName env)]
    | isERROR t1 && isERROR t2 = [ mkSerr t1 , mkSerr t2]
    | isERROR t1 = [ mkSerr t1]
    | isERROR t2 = [ mkSerr t2]
    | sup t1 t2 == t1 = []
    | otherwise = [ "Type mismatch: can't convert " ++ typeToString t2 ++ " to " ++ typeToString t1]