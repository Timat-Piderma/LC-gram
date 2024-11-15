-- -*- haskell -*- File generated by the BNF Converter (bnfc 2.9.5).

-- Parser definition for use with Happy
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module ParGram where

import Prelude

import qualified TypeSystem as TS
import qualified Env as E
import qualified AbsGram as Abs 
import LexGram

}

%name pProgram Program
%name pListStm ListStm
%name pStm Stm
%name pDecl Decl
%name pAss Ass
-- no lexer declaration
%monad { Err } { (>>=) } { return }
%tokentype {Token}
%token
  '+'      { PT _ (TS _ 1) }
  ';'      { PT _ (TS _ 2) }
  '='      { PT _ (TS _ 3) }
  'float'  { PT _ (TS _ 4) }
  'int'    { PT _ (TS _ 5) }
  L_Ident  { PT _ (TV $$)  }
  L_doubl  { PT _ (TD $$)  }
  L_integ  { PT _ (TI $$)  }

%attributetype {Attr a}
%attribute res { Result }
%attribute attr { a }
%attribute err { [String] }
%attribute env { E.EnvT }
%attribute modifiedEnv { E.EnvT }
%attribute ident { String }
%attribute pos { Posn }
%attribute btype { TS.Type }
%%

Ident  : L_Ident 
  { 
    $$.attr = Abs.Ident $1;

    $$.ident = $1;

    $$.err = ["--IDENT--"];

    $$.pos = $1;
  }

Double   : L_doubl  
  { 
    $$.attr = (read $1) :: Double;
    
    $$.err = ["--DOUBLE--"];

    $$.btype = (TS.Base TS.FLOAT);
  }

Integer  : L_integ  
  { 
    $$.attr = (read $1) :: Integer;
    
    $$.err = ["--INTEGER--"];

    $$.btype = (TS.Base TS.INT);
  }


Program : ListStm 
  { 
    $$.res = Result (Abs.ProgramStart $1.attr) $1.err;
    $1.env = E.emptyEnv;
  }


ListStm : Stm ';' 
  { 
    $$.attr = (:[]) $1.attr;

    $1.env = $$.env;

   

    $$.err = if E.containsVar $1.ident $$.env
      then ["Environment already contains "++ $1.ident ++ " declared at " ++ (show (E.getVarPos $1.ident $$.env)) ++ " of type: " ++ (TS.typeToString(E.getVarType $1.ident $$.env))]
      else $1.err;
  } 
  -- $$.err = $1.err;

| Stm ';' ListStm 
  { 
    $$.attr = (:) $1.attr $3.attr;

    $1.env = $$.env;
    $3.env = $1.modifiedEnv;

    

    $$.err = if E.containsVar $1.ident $$.env
      then ["Environment already contains " ++ $1.ident ++ " declared at " ++ (show (E.getVarPos $1.ident $$.env))] ++ $3.err
      else $1.err ++ $3.err;
  }
--$$.err = $1.err ++ $3.err;

Stm: Decl
  { 
    $$.attr = Abs.VarDeclaration $1.attr;

    $1.env = $$.env; 
    $$.modifiedEnv = $1.modifiedEnv;

    $$.err = $1.err;

    $$.ident = $1.ident;
  }
| Ass 
  { 
    $$.attr = Abs.Assignment $1.attr;

    $1.env = $$.env;
    $$.modifiedEnv = $1.modifiedEnv;

    $$.err = $1.err;

    $$.ident = $1.ident;
  }

Decl: 'int' Ident '=' Integer 
  {
    $$.attr = Abs.IntVarDeclaration $2.attr $4.attr;

    $2.env = $$.env;
    $4.env = $$.env;

    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;

    $$.err = $4.err;

    $$.ident = $2.ident;

    $$.pos = $2.pos;

    $$.btype = $4.btype;
  }
  | 'float' Ident '=' Double 
  {
    $$.attr = Abs.FloatVarDeclaration $2.attr $4.attr;

    $2.env = $$.env;
    $4.env = $$.env;

    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;

    $$.err = $4.err;

    $$.ident = $2.ident;

    $$.pos = $2.pos;

    $$.btype = $4.btype;
  }

Ass : Ident '=' Ident '+' Ident 
  {  
    $$.attr = Abs.SumAssignment $1.attr $3.attr $5.attr;

    $1.env = $$.env;
    $3.env = $$.env;
    $5.env = $$.env;

    $$.modifiedEnv = E.insertVar $1.ident (posLineCol $$.pos) $$.btype $$.env;

    $$.err = ["Assignment"];

    $$.ident = $1.ident;

    $$.pos = $1.pos;

    $$.btype = TS.sup (E.getVarType $3.ident $$.env) (E.getVarType $5.ident $$.env)
    
  }

{

data Result = Result Abs.Program [String] deriving (Show)

type Err = Either String

happyError :: [Token] -> Err a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer :: String -> [Token]
myLexer = tokens

}

