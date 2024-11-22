-- File generated by the BNF Converter (bnfc 2.9.5).

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | The abstract syntax of language gram.

module AbsGram where

import Prelude (Char, Double, Integer, String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

data Program = ProgramStart [Stm]
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data BasicType
    = BasicType_int
    | BasicType_float
    | BasicType_char
    | BasicType_String
    | BasicType_bool
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Boolean = Boolean_True | Boolean_False
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Stm
    = Declaration Decl
    | IfThen RExp [Stm]
    | IfThenElse RExp [Stm] [Stm]
    | WhileDo RExp [Stm]
    | DoWhile [Stm] RExp
    | Break
    | Continue
    | Assignment Ident RExp
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Decl
    = VarDeclaration BasicType Ident RExp
    | ArrayDeclaration BasicType Ident RExp
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data RExp
    = Or RExp RExp
    | And RExp RExp
    | Not RExp
    | Eq RExp RExp
    | Neq RExp RExp
    | Lt RExp RExp
    | Gt RExp RExp
    | Le RExp RExp
    | Ge RExp RExp
    | Add RExp RExp
    | Sub RExp RExp
    | Mul RExp RExp
    | Div RExp RExp
    | Mod RExp RExp
    | IntValue Integer
    | FloatValue Double
    | StringValue String
    | CharValue Char
    | BooleanValue Boolean
    | VarValue Ident
  deriving (C.Eq, C.Ord, C.Show, C.Read)

newtype Ident = Ident String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

