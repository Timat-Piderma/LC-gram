-- -*- haskell -*- File generated by the BNF Converter (bnfc 2.9.5).

-- Parser definition for use with Happy
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module ParGram where

import Prelude

import qualified TypeSystem as TS
import qualified Env as E
import qualified ErrS as Err
import qualified AbsGram as Abs 
import LexGram

}

%name pProgram Program
%name pListStm ListStm
%name pBasicType BasicType
%name pBoolean Boolean
%name pStm Stm
%name pDecl Decl
%name pRExp RExp
%name pRExp2 RExp2
%name pRExp3 RExp3
%name pRExp4 RExp4
%name pRExp1 RExp1
-- no lexer declaration
%monad { Err } { (>>=) } { return }
%tokentype {Token}
%token
  '!'      { PT _ (TS _ 1)  }
  '!='     { PT _ (TS _ 2)  }
  '%'      { PT _ (TS _ 3)  }
  '&&'     { PT _ (TS _ 4)  }
  '('      { PT _ (TS _ 5)  }
  ')'      { PT _ (TS _ 6)  }
  '*'      { PT _ (TS _ 7)  }
  '+'      { PT _ (TS _ 8)  }
  '-'      { PT _ (TS _ 9)  }
  '/'      { PT _ (TS _ 10) }
  ';'      { PT _ (TS _ 11) }
  '<'      { PT _ (TS _ 12) }
  '<='     { PT _ (TS _ 13) }
  '='      { PT _ (TS _ 14) }
  '=='     { PT _ (TS _ 15) }
  '>'      { PT _ (TS _ 16) }
  '>='     { PT _ (TS _ 17) }
  'False'  { PT _ (TS _ 18) }
  'String' { PT _ (TS _ 19) }
  'True'   { PT _ (TS _ 20) }
  '['      { PT _ (TS _ 21) }
  ']'      { PT _ (TS _ 22) }
  'bool'   { PT _ (TS _ 23) }
  'char'   { PT _ (TS _ 24) }
  'else'   { PT _ (TS _ 25) }
  'float'  { PT _ (TS _ 26) }
  'if'     { PT _ (TS _ 27) }
  'int'    { PT _ (TS _ 28) }
  '{'      { PT _ (TS _ 29) }
  '||'     { PT _ (TS _ 30) }
  '}'      { PT _ (TS _ 31) }
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

Program : ListStm 
  { 
    $$.res = Result (Abs.ProgramStart $1.attr) $1.err;
    $1.env = E.emptyEnv;
  }

ListStm : Stm ';' 
  { 
    $$.attr = (:[]) $1.attr;
    $1.env = $$.env;
    $$.err = $1.err;
  } 
  | Stm ';' ListStm 
  { 
    $$.attr = (:) $1.attr $3.attr;
    $1.env = $$.env;
    $3.env = $1.modifiedEnv;
    $$.err = $1.err ++ $3.err;
  }

Stm: Decl
  { 
    $$.attr = Abs.Declaration $1.attr;
    $1.env = $$.env; 
    $$.modifiedEnv = $1.modifiedEnv;
    $$.err = $1.err;
    $$.ident = $1.ident;
    $$.btype = $1.btype;
  }
  | 'if' '(' RExp ')' '{' ListStm '}'
  { 
    $$.attr = Abs.IfThen $3.attr $6.attr;
    $3.env = $$.env;
    $6.env = $$.env;
    $$.modifiedEnv = $$.env;
    $$.err = Err.mkIfErrs $3.btype $6.err;
  }
  | 'if' '(' RExp ')' '{' ListStm '}' 'else' '{' ListStm '}' 
  { 
    $$.attr = Abs.IfThenElse $3.attr $6.attr $10.attr;
    $3.env = $$.env;
    $6.env = $$.env;
    $10.env = $$.env;
    $$.modifiedEnv = $$.env;
    $$.err = Err.mkIfErrs $3.btype ($6.err ++ $10.err);
  }
  | Ident '=' RExp 
  {  
    $$.attr = Abs.Assignment $1.attr $3.attr;
    $$.modifiedEnv = E.insertVar $1.ident (posLineCol $$.pos) $$.btype $$.env;
    $$.err = Err.mkAssignmentErrs (E.getVarType $1.ident $$.env) $3.btype;
    $$.ident = $1.ident;
    $$.pos = $1.pos;
    $$.btype = TS.sup (E.getVarType $1.ident $$.env) (E.getVarType $3.ident $$.env);
    $3.env = $$.env;
   }

Decl: BasicType Ident '=' RExp 
  {   
    $$.attr = Abs.VarDeclaration $1.attr $2.attr $4.attr;
    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;
    $$.err = Err.mkDeclErrs $1.btype $4.btype $$.env $2.ident; 
    $$.ident = $2.ident;
    $$.pos = $2.pos;
    $$.btype = TS.sup $4.btype $1.btype;
    $4.env = $$.env;
   }
  | BasicType Ident '[' Integer ']' 
  { 
    $$.attr = Abs.ArrayDeclaration $1.attr $2.attr $4.attr;
    $$.modifiedEnv = E.insertVar $2.ident (posLineCol $$.pos) $$.btype $$.env;
    $$.err = Err.mkDeclErrs $1.btype $4.btype $$.env $2.ident;
    $$.ident = $2.ident;
    $$.pos = $2.pos;
    $$.btype = TS.mkArrElemTy (TS.ARRAY $4.attr $1.btype) $4.btype; 
  }

RExp: RExp '||' RExp2 
  {
    $$.attr = Abs.Or $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.isBoolean (TS.sup $1.btype $3.btype); 
    $1.env = $$.env;  
    $3.env = $$.env;
  }
  | RExp '&&' RExp2 
  {
    $$.attr = Abs.And $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.isBoolean (TS.sup $1.btype $3.btype); 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | '!' RExp2 
  { 
    $$.attr = Abs.Not $2.attr;
    $$.err = $2.err;
    $$.btype = TS.isBoolean $2.btype; 
    $2.env = $$.env;
  }
  | RExp1 
  { 
    $$.attr = $1.attr; 
    $$.err = $1.err;
    $$.btype = $1.btype;
    $1.env = $$.env;
  }

RExp2: RExp2 '==' RExp3 
  { 
    $$.attr = Abs.Eq $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp2 '!=' RExp3 
  { 
    $$.attr = Abs.Neq $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp2 '<' RExp3 
  { 
    $$.attr = Abs.Lt $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp2 '>' RExp3 
  { 
    $$.attr = Abs.Gt $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp2 '<=' RExp3 
  { 
    $$.attr = Abs.Le $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp2 '>=' RExp3 
  { 
    $$.attr = Abs.Ge $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.rel $1.btype $3.btype; 
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp3 
  {
    $$.attr = $1.attr; 
    $$.err = $1.err;
    $$.btype = $1.btype;
    $1.env = $$.env;
  }

RExp3: RExp3 '+' RExp4 
  { 
    $$.attr = Abs.Add $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.sup $1.btype $3.btype;
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp3 '-' RExp4 
  { 
    $$.attr = Abs.Sub $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.sup $1.btype $3.btype;
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp3 '*' RExp4 
  { 
    $$.attr = Abs.Mul $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.sup $1.btype $3.btype;
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp3 '/' RExp4 
  { 
    $$.attr = Abs.Div $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.sup $1.btype $3.btype;
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp3 '%' RExp4 
  { 
    $$.attr = Abs.Mod $1.attr $3.attr;
    $$.err = $1.err ++ $3.err;
    $$.btype = TS.sup $1.btype $3.btype;
    $1.env = $$.env;
    $3.env = $$.env;
  }
  | RExp4 
  {     
    $$.attr = $1.attr; 
    $$.err = $1.err;
    $$.btype = $1.btype;
    $1.env = $$.env;
  }

RExp4: Integer 
  { 
    $$.attr = Abs.IntValue $1.attr; 
    $$.err = $1.err;
    $$.btype = $1.btype;
  }
  | Double  
  { 
    $$.attr = Abs.FloatValue $1.attr;
    $$.err = $1.err;
    $$.btype = $1.btype;
  }
  | String  
  { 
    $$.attr = Abs.StringValue $1.attr;
    $$.err = $1.err;
    $$.btype = $1.btype;
  }
  | Char  
  { 
    $$.attr = Abs.CharValue $1.attr;
    $$.err = $1.err;
    $$.btype = $1.btype;
  }
  | Boolean  
  { 
    $$.attr = Abs.BooleanValue $1.attr;
    $$.err = $1.err;
    $$.btype = $1.btype;
  }
  | Ident  
  { 
    $$.attr = Abs.VarValue $1.attr;
    $$.err = $1.err;
    $$.btype = (E.getVarType $1.ident $$.env);
  }
  | '(' RExp ')'  
  { 
    $$.attr =  $2.attr;
    $$.err = $2.err;
    $$.btype = $2.btype;
    $2.env = $$.env;
  }

RExp1 : RExp2 
{
    $$.attr = $1.attr;
    $$.err = $1.err;
    $$.btype = $1.btype;
    $1.env = $$.env;
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