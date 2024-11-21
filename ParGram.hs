{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module ParGram where

import Prelude

import qualified TypeSystem as TS
import qualified Env as E
import qualified ErrS as Err
import qualified AbsGram as Abs 

import LexGram
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

newtype HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn14 :: t14 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: t27 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: t28 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: t29 -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> t29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyInTok :: (Token) -> (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x00\x00\x80\xb8\x47\x00\x00\x00\x00\x00\x00\x88\x7b\x04\x00\x00\x00\x00\x00\x80\x98\x02\x00\x00\x00\x00\x00\x00\x14\x00\x00\x00\x00\x00\x00\x00\x80\xb8\x47\x00\x00\x00\x00\x00\x00\x88\x29\x00\x00\x00\x00\x20\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\xb0\x03\x00\x00\x00\x00\x00\x80\x78\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x00\x14\x00\x7c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x88\x07\x00\x00\x00\x00\x00\x00\x40\x00\x3b\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x88\x7b\x04\x00\x00\x00\x20\x02\x40\x01\xc0\x07\x00\x00\x00\x22\x00\x14\x00\x7c\x00\x00\x00\x00\x00\x80\xb8\x47\x00\x00\x00\x00\x22\x00\x14\x00\x7c\x00\x00\x00\x00\x00\x04\x02\x00\x00\x00\x00\x00\x04\xb0\x03\x00\x00\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x20\x00\x14\x00\x7c\x00\x00\x00\x00\x02\x40\x01\xc0\x07\x00\x00\x00\x50\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x78\x00\x00\x00\x00\x00\x00\x00\x88\x07\x00\x00\x00\x00\x00\x00\x80\x78\x00\x00\x00\x00\x00\x00\x00\x88\x07\x00\x00\x00\x00\x00\x00\x80\x78\x00\x00\x00\x00\x00\x00\x00\x88\x07\x00\x00\x00\x00\x00\x00\x40\x00\x3b\x00\x00\x00\x00\x00\x00\x04\xb0\x03\x00\x00\x00\x00\x00\x20\x02\x40\x01\xc0\x07\x00\x00\x00\x22\x00\x14\x00\x7c\x00\x00\x00\x00\x01\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x05\x00\x00\x10\x00\x00\x00\x00\x50\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x01\x00\x04\x10\x00\x00\x00\x00\x10\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xb8\x47\x00\x00\x00\x00\x00\x00\x88\x7b\x04\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x20\x02\x40\x01\xc0\x07\x00\x00\x00\x50\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xb8\x47\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","%start_pListStm","%start_pBasicType","%start_pBoolean","%start_pStm","%start_pDecl","%start_pRExp","%start_pRExp2","%start_pRExp3","%start_pRExp4","%start_pRExp1","Ident","Double","Integer","Char","String","Boolean","BasicType","Program","ListStm","Stm","Decl","RExp","RExp2","RExp3","RExp4","RExp1","'!'","'!='","'%'","'&&'","'('","')'","'*'","'+'","'-'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'False'","'String'","'True'","'['","']'","'bool'","'char'","'do'","'else'","'float'","'if'","'int'","'while'","'{'","'||'","'}'","L_Ident","L_charac","L_doubl","L_integ","L_quoted","%eof"]
        bit_start = st Prelude.* 68
        bit_end = (st Prelude.+ 1) Prelude.* 68
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..67]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xd0\x00\xd0\x00\x9c\x01\xf3\xff\xd0\x00\x9c\x01\x01\x00\x17\x00\x17\x00\x17\x00\x17\x00\xe6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x00\x65\x01\x00\x00\xe3\xff\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe3\xff\x06\x00\x0a\x00\x0e\x00\x00\x00\x17\x00\xef\xff\xed\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\xf1\xff\x00\x00\x02\x00\x1a\x00\x1b\x00\x18\x00\x18\x00\x18\x00\x36\x00\x1c\x00\x00\x00\xd0\x00\x01\x00\x01\x00\xd0\x00\x01\x00\xf6\xff\x3e\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\x17\x00\xfd\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x65\x01\x65\x01\x65\x01\x65\x01\x65\x01\x65\x01\x3e\x00\x3e\x00\x01\x00\x01\x00\x28\x00\x16\x00\x24\x00\x2c\x00\x00\x00\x23\x00\x26\x00\x2b\x00\x1e\x00\x28\x00\x00\x00\x41\x00\xd0\x00\xd0\x00\x2f\x00\x30\x00\x01\x00\x32\x00\x2d\x00\x00\x00\x3a\x00\x00\x00\xd0\x00\x39\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xa4\x01\xb2\x01\x55\x00\x57\x00\xda\x01\x29\x00\x53\x00\xf3\x00\x1d\x01\x62\x01\xd3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x63\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf9\x00\x5d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xbd\x01\x73\x00\x83\x00\xc2\x01\x93\x00\x00\x00\x00\x00\x08\x01\x0e\x01\x23\x01\x32\x01\x38\x01\x47\x01\x4d\x01\x5c\x01\x71\x01\x77\x01\x86\x01\x8c\x01\x9b\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa3\x00\xb3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\x01\xce\x01\x00\x00\x00\x00\xc3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd5\x01\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf4\xff\xc7\xff\xcb\xff\xcc\xff\xc9\xff\xca\xff\xc8\xff\xc5\xff\xd3\xff\xcd\xff\x00\x00\x00\x00\xee\xff\xef\xff\xf1\xff\xf3\xff\xf2\xff\xf0\xff\x00\x00\x00\x00\x00\x00\x00\x00\xda\xff\x00\x00\x00\x00\x00\x00\xea\xff\xe9\xff\xeb\xff\xec\xff\xed\xff\x00\x00\x00\x00\xe5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe8\xff\xe7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc6\xff\xcf\xff\xd1\xff\xd2\xff\xd0\xff\xce\xff\xd4\xff\xd6\xff\xd9\xff\xd5\xff\xd7\xff\xd8\xff\xdd\xff\xdc\xff\x00\x00\x00\x00\xe0\xff\x00\x00\x00\x00\x00\x00\xe6\xff\x00\x00\x00\x00\x00\x00\x00\x00\xdf\xff\xde\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe4\xff\xe2\xff\x00\x00\xe1\xff\x00\x00\x00\x00\xe3\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x04\x00\x01\x00\x06\x00\x0e\x00\x12\x00\x05\x00\x14\x00\x22\x00\x03\x00\x27\x00\x15\x00\x02\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x22\x00\x04\x00\x12\x00\x27\x00\x14\x00\x0c\x00\x0d\x00\x27\x00\x0f\x00\x10\x00\x11\x00\x05\x00\x20\x00\x0e\x00\x05\x00\x05\x00\x1f\x00\x04\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x04\x00\x12\x00\x06\x00\x14\x00\x04\x00\x27\x00\x20\x00\x06\x00\x04\x00\x27\x00\x06\x00\x0a\x00\x16\x00\x27\x00\x04\x00\x21\x00\x06\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x20\x00\x27\x00\x02\x00\x0b\x00\x1f\x00\x27\x00\x20\x00\x1f\x00\x05\x00\x1a\x00\x20\x00\x1e\x00\x0c\x00\x0d\x00\x20\x00\x0f\x00\x10\x00\x11\x00\x21\x00\x21\x00\x20\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x1f\x00\x21\x00\x06\x00\x05\x00\x00\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x13\x00\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\xff\xff\xff\xff\xff\xff\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0d\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x03\x00\x0d\x00\x0e\x00\xff\xff\x07\x00\x08\x00\x09\x00\x0a\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0e\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x13\x00\xff\xff\xff\xff\x00\x00\x17\x00\x18\x00\xff\xff\xff\xff\x1b\x00\x06\x00\x1d\x00\x08\x00\x09\x00\x0a\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff\x00\x00\x06\x00\xff\xff\x08\x00\x09\x00\x0a\x00\x06\x00\x00\x00\x08\x00\x09\x00\x0a\x00\xff\xff\x00\x00\x06\x00\xff\xff\x08\x00\x09\x00\x0a\x00\x06\x00\x00\x00\x08\x00\x09\x00\x0a\x00\xff\xff\x00\x00\x06\x00\xff\xff\x08\x00\x09\x00\x0a\x00\x06\x00\xff\xff\xff\xff\x09\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x3f\x00\x24\x00\x4d\x00\x5b\x00\x19\x00\x18\x00\x1a\x00\x0d\x00\x47\x00\xff\xff\x5c\x00\x41\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x0d\x00\x3f\x00\x19\x00\xff\xff\x1a\x00\x42\x00\x43\x00\xff\xff\x44\x00\x45\x00\x46\x00\x18\x00\x40\x00\x3c\x00\x3a\x00\x39\x00\x3b\x00\x3f\x00\x0d\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x3f\x00\x19\x00\x63\x00\x1a\x00\x3f\x00\xff\xff\x40\x00\x24\x00\x3f\x00\xff\xff\x62\x00\x25\x00\x67\x00\xff\xff\x3f\x00\x64\x00\x72\x00\x0d\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x40\x00\xff\xff\x41\x00\x38\x00\x6a\x00\xff\xff\x40\x00\x69\x00\x6d\x00\x71\x00\x40\x00\x68\x00\x42\x00\x43\x00\x40\x00\x44\x00\x45\x00\x46\x00\x70\x00\x6f\x00\x40\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x73\x00\x75\x00\x32\x00\x31\x00\x3c\x00\x21\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5e\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5c\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x65\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x64\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6d\x00\x13\x00\x14\x00\x15\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x13\x00\x14\x00\x15\x00\x16\x00\x27\x00\x00\x00\x00\x00\x00\x00\x28\x00\x29\x00\x2f\x00\x00\x00\x2a\x00\x30\x00\x2b\x00\x31\x00\x00\x00\x00\x00\x00\x00\x0d\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x20\x00\x14\x00\x15\x00\x00\x00\x00\x00\x00\x00\x3d\x00\x14\x00\x15\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x59\x00\x14\x00\x15\x00\x00\x00\x00\x00\x00\x00\x58\x00\x14\x00\x15\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x1f\x00\x15\x00\x00\x00\x00\x00\x00\x00\x00\x00\x57\x00\x15\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x56\x00\x15\x00\x00\x00\x00\x00\x00\x00\x00\x00\x55\x00\x15\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x54\x00\x15\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\x00\x15\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x47\x00\x52\x00\x15\x00\x00\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x1e\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x51\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x4f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4e\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x00\x00\x00\x00\x2b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x24\x00\x35\x00\x36\x00\x34\x00\x2d\x00\x27\x00\x00\x00\x00\x00\x2b\x00\x28\x00\x29\x00\x00\x00\x00\x00\x2a\x00\x24\x00\x2b\x00\x33\x00\x34\x00\x2d\x00\x2b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2b\x00\x24\x00\x00\x00\x60\x00\x34\x00\x2d\x00\x24\x00\x2b\x00\x5d\x00\x34\x00\x2d\x00\x00\x00\x2b\x00\x24\x00\x00\x00\x6b\x00\x34\x00\x2d\x00\x24\x00\x2b\x00\x6a\x00\x34\x00\x2d\x00\x00\x00\x2b\x00\x24\x00\x00\x00\x73\x00\x34\x00\x2d\x00\x24\x00\x00\x00\x00\x00\x2c\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (11, 58) [
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58)
	]

happy_n_terms = 40 :: Prelude.Int
happy_n_nonterms = 16 :: Prelude.Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happySpecReduce_1  0# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT p (TV happy_var_1)) -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ pos = p , err = ["--IDENT--"] , ident = happy_var_1 , attr = Abs.Ident happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happySpecReduce_1  1# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.FLOAT) , err = ["--DOUBLE--"] , attr = (read happy_var_1 ) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_1  2# happyReduction_13
happyReduction_13 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.INT) , err = ["--INTEGER--"] , attr = (read happy_var_1 ) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_1  3# happyReduction_14
happyReduction_14 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.CHAR) , err = ["--CHARACTER--"] , attr = (read happy_var_1 ) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  4# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.STRING) , err = ["--STRING--"] , attr = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_1  5# happyReduction_16
happyReduction_16 happy_x_1
	 =  happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.BOOL) , err = ["--BOOLEAN--"] , attr = Abs.Boolean_True  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_1  5# happyReduction_17
happyReduction_17 happy_x_1
	 =  happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.BOOL) , err = ["--BOOLEAN--"] , attr = Abs.Boolean_False  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_1  6# happyReduction_18
happyReduction_18 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.INT , attr = Abs.BasicType_int  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_1  6# happyReduction_19
happyReduction_19 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.FLOAT , attr = Abs.BasicType_float  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_1  6# happyReduction_20
happyReduction_20 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.CHAR , attr = Abs.BasicType_char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  6# happyReduction_21
happyReduction_21 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.STRING , attr = Abs.BasicType_String  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_1  6# happyReduction_22
happyReduction_22 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.BOOL , attr = Abs.BasicType_bool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_1  7# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ res = Result (Abs.ProgramStart (attr happySubAttrs_1) ) (err happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = E.emptyEnv  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_2  8# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (err happySubAttrs_1) , attr = (:[]) (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_3  8# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = (:) (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (modifiedEnv happySubAttrs_1)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  9# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , ident = (ident happySubAttrs_1) , err = (err happySubAttrs_1) , modifiedEnv = (modifiedEnv happySubAttrs_1) , attr = Abs.Declaration (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happyReduce 7# 9# happyReduction_27
happyReduction_27 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	case happyOut22 happy_x_6 of { happy_var_6 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = Err.mkIfErrs (btype happySubAttrs_3) (err happySubAttrs_6) (posLineCol (tokenPosn happy_var_1 )) , modifiedEnv = (env happySelfAttrs) , attr = Abs.IfThen (attr happySubAttrs_3) (attr happySubAttrs_6)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_3 Prelude.++ happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happyReduce 11# 9# happyReduction_28
happyReduction_28 (happy_x_11 `HappyStk`
	happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	case happyOut22 happy_x_6 of { happy_var_6 -> 
	case happyOut22 happy_x_10 of { happy_var_10 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = Err.mkIfErrs (btype happySubAttrs_3) ( (err happySubAttrs_6) ++ (err happySubAttrs_10) ) (posLineCol (tokenPosn happy_var_1 )) , modifiedEnv = (env happySelfAttrs) , attr = Abs.IfThenElse (attr happySubAttrs_3) (attr happySubAttrs_6) (attr happySubAttrs_10)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_10,happySubAttrs_10) = happy_var_10 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_3 Prelude.++ happyConditions_6 Prelude.++ happyConditions_10 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happyReduce 7# 9# happyReduction_29
happyReduction_29 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	case happyOut22 happy_x_6 of { happy_var_6 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = Err.mkIfErrs (btype happySubAttrs_3) (err happySubAttrs_6) (posLineCol (tokenPosn happy_var_1 )) , modifiedEnv = (env happySelfAttrs) , attr = Abs.WhileDo (attr happySubAttrs_3) (attr happySubAttrs_6)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_3 Prelude.++ happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happyReduce 8# 9# happyReduction_30
happyReduction_30 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_3 of { happy_var_3 -> 
	case happyOut25 happy_x_7 of { happy_var_7 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = Err.mkIfErrs (btype happySubAttrs_7) (err happySubAttrs_3) (posLineCol (tokenPosn happy_var_1 )) , modifiedEnv = (env happySelfAttrs) , attr = Abs.DoWhile (attr happySubAttrs_3) (attr happySubAttrs_7)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_3 Prelude.++ happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happySpecReduce_3  9# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (E.getVarType (ident happySubAttrs_1) (env happySelfAttrs) ) (E.getVarType (ident happySubAttrs_3) (env happySelfAttrs) ) , pos = (pos happySubAttrs_1) , ident = (ident happySubAttrs_1) , err = Err.mkAssignmentErrs (E.getVarType (ident happySubAttrs_1) (env happySelfAttrs) ) (btype happySubAttrs_3) (posLineCol (pos happySelfAttrs) ) , modifiedEnv = E.insertVar (ident happySubAttrs_1) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.Assignment (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happyReduce 4# 10# happyReduction_32
happyReduction_32 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut20 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_4 of { happy_var_4 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_4) (btype happySubAttrs_1) , pos = (pos happySubAttrs_2) , ident = (ident happySubAttrs_2) , err = Err.mkDeclErrs (btype happySubAttrs_1) (btype happySubAttrs_4) (env happySelfAttrs) (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) , modifiedEnv = E.insertVar (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.VarDeclaration (attr happySubAttrs_1) (attr happySubAttrs_2) (attr happySubAttrs_4)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_2 Prelude.++ happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happyReduce 5# 10# happyReduction_33
happyReduction_33 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut20 happy_x_1 of { happy_var_1 -> 
	case happyOut14 happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_4 of { happy_var_4 -> 
	happyIn24
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.ARRAY (btype happySubAttrs_4) (btype happySubAttrs_1) ) , pos = (pos happySubAttrs_2) , ident = (ident happySubAttrs_2) , err = Err.mkArrayDeclErrs (btype happySubAttrs_4) (env happySelfAttrs) (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) , modifiedEnv = E.insertVar (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.ArrayDeclaration (attr happySubAttrs_1) (attr happySubAttrs_2) (attr happySubAttrs_4)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_2 Prelude.++ happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_3  11# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.isBoolean (TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) ) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Or (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_3  11# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.isBoolean (TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) ) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.And (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happySpecReduce_2  11# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.isBoolean (btype happySubAttrs_2) , err = (err happySubAttrs_2) , attr = Abs.Not (attr happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happySpecReduce_1  11# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_3  12# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Eq (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  12# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Neq (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  12# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Lt (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  12# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Gt (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  12# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Le (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_3  12# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.rel (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Ge (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_1  12# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_3  13# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Add (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_3  13# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Sub (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happySpecReduce_3  13# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Mul (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_3  13# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Div (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_3  13# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (btype happySubAttrs_1) (btype happySubAttrs_3) , err = (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = Abs.Mod (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_1  13# happyReduction_50
happyReduction_50 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_1  14# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = Abs.IntValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_1  14# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = Abs.FloatValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_1  14# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = Abs.StringValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_1  14# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = Abs.CharValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_1  14# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = Abs.BooleanValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_56 = happySpecReduce_1  14# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (E.getVarType (ident happySubAttrs_1) (env happySelfAttrs) ) , err = (err happySubAttrs_1) , attr = Abs.VarValue (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_57 = happySpecReduce_3  14# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn28
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_2) , err = (err happySubAttrs_2) , attr = (attr happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_2 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_58 = happySpecReduce_1  15# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_1) , err = (err happySubAttrs_1) , attr = (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

happyNewToken action sts stk [] =
	happyDoAction 39# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TV happy_dollar_dollar) -> cont 34#;
	PT _ (TC happy_dollar_dollar) -> cont 35#;
	PT _ (TD happy_dollar_dollar) -> cont 36#;
	PT _ (TI happy_dollar_dollar) -> cont 37#;
	PT _ (TL happy_dollar_dollar) -> cont 38#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = ((>>=))
happyReturn :: () => a -> Err a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
do_pProgram tks = happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {x' = happyOut21 x} in x'))

do_pListStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (let {x' = happyOut22 x} in x'))

do_pBasicType tks = happySomeParser where
 happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (let {x' = happyOut20 x} in x'))

do_pBoolean tks = happySomeParser where
 happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (let {x' = happyOut19 x} in x'))

do_pStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (let {x' = happyOut23 x} in x'))

do_pDecl tks = happySomeParser where
 happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (let {x' = happyOut24 x} in x'))

do_pRExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (let {x' = happyOut25 x} in x'))

do_pRExp2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (let {x' = happyOut26 x} in x'))

do_pRExp3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (let {x' = happyOut27 x} in x'))

do_pRExp4 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (let {x' = happyOut28 x} in x'))

do_pRExp1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (let {x' = happyOut29 x} in x'))

pProgram toks = do { f <- do_pProgram toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pListStm toks = do { f <- do_pListStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pBasicType toks = do { f <- do_pBasicType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pBoolean toks = do { f <- do_pBoolean toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pStm toks = do { f <- do_pStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pDecl toks = do { f <- do_pDecl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pRExp toks = do { f <- do_pRExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pRExp2 toks = do { f <- do_pRExp2 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pRExp3 toks = do { f <- do_pRExp3 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pRExp4 toks = do { f <- do_pRExp4 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pRExp1 toks = do { f <- do_pRExp1 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

happySeq = happyDontSeq

data Attr a = HappyAttributes {res :: Result, attr :: a, err :: [String], env :: E.EnvT, modifiedEnv :: E.EnvT, ident :: String, pos :: Posn, btype :: TS.Type}
happyEmptyAttrs = HappyAttributes {res = Prelude.error "invalid reference to attribute 'res'", attr = Prelude.error "invalid reference to attribute 'attr'", err = Prelude.error "invalid reference to attribute 'err'", env = Prelude.error "invalid reference to attribute 'env'", modifiedEnv = Prelude.error "invalid reference to attribute 'modifiedEnv'", ident = Prelude.error "invalid reference to attribute 'ident'", pos = Prelude.error "invalid reference to attribute 'pos'", btype = Prelude.error "invalid reference to attribute 'btype'"}

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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Prelude.Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Prelude.Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Prelude.Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Prelude.Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `Prelude.mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ((Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
