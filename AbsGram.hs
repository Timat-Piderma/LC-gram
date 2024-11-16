-- File generated by the BNF Converter (bnfc 2.9.5).

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | The abstract syntax of language gram.

module AbsGram where

import Prelude (Char, Double, Integer, String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

data Program = ProgramStart [Stm]
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Stm = VarDeclaration Decl | Assignment Ass
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Decl
    = IntVarDeclaration Ident Integer
    | FloatVarDeclaration Ident Double
    | CharVarDeclaration Ident Char
    | StringVarDeclaration Ident String
    | BooleanVarDeclaration Ident Boolean
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Boolean = Boolean_true | Boolean_false
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Ass = SumAssignment Ident Ident Ident
  deriving (C.Eq, C.Ord, C.Show, C.Read)

newtype Ident = Ident String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

