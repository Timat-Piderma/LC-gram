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

data Stm = Declaration Decl | Assignment Ident RExp
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Decl
    = VarDeclaration BasicType Ident RExp
    | ArrayDeclaration BasicType Ident Integer
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data RExp
    = Add RExp RExp
    | Sub RExp RExp
    | IntValue Integer
    | FloatValue Double
    | StringValue String
    | CharValue Char
    | BooleanValue Boolean
    | VarValue Ident
  deriving (C.Eq, C.Ord, C.Show, C.Read)

newtype Ident = Ident String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

