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
%name pBasicType BasicType
%name pBoolean Boolean
%name pValue Value
%name pDecl Decl
%name pAss Ass
-- no lexer declaration
%monad { Err } { (>>=) } { return }
%tokentype {Token}
%token
  '+'      { PT _ (TS _ 1)  }
  ';'      { PT _ (TS _ 2)  }
  '='      { PT _ (TS _ 3)  }
  'False'  { PT _ (TS _ 4)  }
  'String' { PT _ (TS _ 5)  }
  'True'   { PT _ (TS _ 6)  }
  '['      { PT _ (TS _ 7)  }
  ']'      { PT _ (TS _ 8)  }
  'bool'   { PT _ (TS _ 9)  }
  'char'   { PT _ (TS _ 10) }
  'float'  { PT _ (TS _ 11) }
  'int'    { PT _ (TS _ 12) }
  L_Ident  { PT _ (TV $$)   }
  L_charac { PT _ (TC $$)   }
  L_doubl  { PT _ (TD $$)   }
  L_integ  { PT _ (TI $$)   }
  L_quoted { PT _ (TL $$)   }

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

Char    : L_charac
  { 
    $$.attr =  (read $1) :: Char;

    $$.err = ["--CHARACTER--"];

    $$.btype = (TS.Base TS.CHAR);
  }

String   : L_quoted 
  {
    $$.attr =  $1;

    $$.err = ["--STRING--"];

    $$.btype = (TS.Base TS.STRING);
  }

Boolean: 'True' 
  { 
    $$.attr = Abs.Boolean_True;

    $$.err = ["--BOOLEAN--"];

    $$.btype = (TS.Base TS.BOOL);
  }
  | 'False' 
  { 
    $$.attr = Abs.Boolean_False;

    $$.err = ["--BOOLEAN--"];

    $$.btype = (TS.Base TS.BOOL);
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
  | Stm ';' ListStm 
  { 
    $$.attr = (:) $1.attr $3.attr;

    $1.env = $$.env;
    $3.env = $1.modifiedEnv;

    $$.err = if E.containsVar $1.ident $$.env
      then ["Environment already contains " ++ $1.ident ++ " declared at " ++ (show (E.getVarPos $1.ident $$.env)) ++ " of type: " ++ (TS.typeToString(E.getVarType $1.ident $$.env)) ] ++ $3.err
      else $1.err ++ $3.err;
  }

Stm: Decl
  { 
    $$.attr = Abs.Declaration $1.attr;

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

BasicType: 'int' 
  { 
    $$.attr = Abs.BasicType_int;

    $$.btype = TS.Base TS.INT;
  }
  | 'float'   
  { 
    $$.attr = Abs.BasicType_float;

    $$.btype = TS.Base TS.FLOAT;
  }
  | 'char'   
  { 
    $$.attr = Abs.BasicType_char;

    $$.btype = TS.Base TS.CHAR;
  }
  | 'String'   
  { 
    $$.attr = Abs.BasicType_String;

    $$.btype = TS.Base TS.STRING;
  }
  | 'bool'  
  { 
    $$.attr = Abs.BasicType_bool;

    $$.btype = TS.Base TS.BOOL;
  }

Value: Integer 
  { 
    $$.attr = Abs.ValueInteger $1.attr;
  }
  | Double   
  { 
    $$.attr = Abs.ValueDouble $1.attr;
  }
  | Char   
  { 
    $$.attr = Abs.ValueChar $1.attr;
  }
  | String   
  { 
    $$.attr = Abs.ValueString $1.attr;
  }
  | Boolean   
  { 
    $$.attr = Abs.ValueBoolean $1.attr;
  }

Decl: BasicType Ident '=' Value 
  {   
    $$.attr = Abs.VarDeclaration $1.attr $2.attr $4.attr;

    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;

    $$.err = $4.err;

    $$.ident = $2.ident;

    $$.pos = $2.pos;

    $$.btype = $4.btype;
   }
  | BasicType Ident '[' Integer ']' 
  { 
    $$.attr = Abs.ArrayDeclaration $1.attr $2.attr $4.attr;

    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;

    $$.err = $4.err;

    $$.ident = $2.ident;

    $$.pos = $2.pos;

    $$.btype = TS.mkArrElemTy (TS.ARRAY $4.attr $1.btype) $4.btype; 
  }

Ass : Ident '=' Ident '+' Ident 
  { 
    $$.attr = Abs.SumAssignment $1.attr $3.attr $5.attr;

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

