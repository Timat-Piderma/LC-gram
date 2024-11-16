-- File generated by the BNF Converter (bnfc 2.9.5).

-- Templates for pattern matching on abstract syntax

{-# OPTIONS_GHC -fno-warn-unused-matches #-}

module SkelGram where

import Prelude (($), Either(..), String, (++), Show, show)
import qualified AbsGram

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transIdent :: AbsGram.Ident -> Result
transIdent x = case x of
  AbsGram.Ident string -> failure x

transProgram :: AbsGram.Program -> Result
transProgram x = case x of
  AbsGram.ProgramStart stms -> failure x

transStm :: AbsGram.Stm -> Result
transStm x = case x of
  AbsGram.VarDeclaration decl -> failure x
  AbsGram.Assignment ass -> failure x

transDecl :: AbsGram.Decl -> Result
transDecl x = case x of
  AbsGram.IntVarDeclaration ident integer -> failure x
  AbsGram.FloatVarDeclaration ident double -> failure x
  AbsGram.CharVarDeclaration ident char -> failure x
  AbsGram.StringVarDeclaration ident string -> failure x
  AbsGram.BooleanVarDeclaration ident boolean -> failure x

transBoolean :: AbsGram.Boolean -> Result
transBoolean x = case x of
  AbsGram.Boolean_true -> failure x
  AbsGram.Boolean_false -> failure x

transAss :: AbsGram.Ass -> Result
transAss x = case x of
  AbsGram.SumAssignment ident1 ident2 ident3 -> failure x
