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
import qualified AbsGram as Abs 
import LexGram
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

newtype HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn11 :: t11 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyInTok :: (Token) -> (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x00\x00\x88\x0f\x00\x00\x00\x10\x1f\x00\x00\x00\x20\x3e\x00\x00\x00\x40\x3c\x00\x00\x00\x40\x01\x00\x00\x00\x80\x02\x1e\x00\x00\x00\xe2\x01\x00\x00\x00\x00\x04\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x88\x0f\x00\x00\x00\x44\x00\x00\x00\x00\x00\x20\x00\x00\x00\x04\x00\x00\x00\x00\x40\x01\x0f\x00\x00\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","%start_pListStm","%start_pStm","%start_pBasicType","%start_pBoolean","%start_pValue","%start_pDecl","%start_pAss","Ident","Double","Integer","Char","String","Boolean","Program","ListStm","Stm","BasicType","Value","Decl","Ass","'+'","';'","'='","'False'","'String'","'True'","'['","']'","'bool'","'char'","'float'","'int'","L_Ident","L_charac","L_doubl","L_integ","L_quoted","%eof"]
        bit_start = st Prelude.* 41
        bit_end = (st Prelude.+ 1) Prelude.* 41
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..40]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x3b\x00\x3b\x00\x3b\x00\x44\x00\x01\x00\xfd\xff\x44\x00\xf7\xff\xf7\xff\x00\x00\x05\x00\x06\x00\x10\x00\x15\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x15\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x15\x00\x15\x00\x15\x00\x00\x00\x00\x00\x15\x00\x27\x00\x18\x00\x00\x00\x3b\x00\xff\xff\x20\x00\x16\x00\xfd\xff\x25\x00\x00\x00\x2e\x00\x00\x00\x2a\x00\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x09\x00\x13\x00\x23\x00\x36\x00\x33\x00\x2f\x00\x1d\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x41\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x00\x00\x00\x42\x00\x00\x00\x39\x00\x48\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x00\x00\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf7\xff\x00\x00\x00\x00\x00\x00\x00\x00\xe8\xff\xe7\xff\xe9\xff\xea\xff\xeb\xff\xe5\xff\xe6\xff\xe4\xff\xe3\xff\xe2\xff\x00\x00\xf1\xff\xf2\xff\xf4\xff\xf6\xff\xf5\xff\xf3\xff\x00\x00\x00\x00\x00\x00\xed\xff\xec\xff\x00\x00\x00\x00\x00\x00\xf0\xff\xef\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xee\xff\x00\x00\xe1\xff\x00\x00\xdf\xff\xe0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x04\x00\x03\x00\x06\x00\x0d\x00\x04\x00\x07\x00\x06\x00\x03\x00\x00\x00\x00\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x06\x00\x07\x00\x08\x00\x09\x00\x00\x00\x0b\x00\x0c\x00\x0c\x00\x01\x00\x12\x00\x00\x00\x07\x00\x08\x00\x09\x00\x0d\x00\x0b\x00\x0c\x00\x07\x00\x08\x00\x09\x00\x00\x00\x0b\x00\x0c\x00\x09\x00\x12\x00\x0b\x00\x02\x00\x12\x00\x08\x00\x09\x00\x0d\x00\x0b\x00\x0c\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x10\x00\x08\x00\x0d\x00\x05\x00\x0a\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x09\x00\x05\x00\x00\x00\x00\x00\x0a\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x05\x00\x02\x00\x00\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x1a\x00\x2d\x00\x1b\x00\x0a\x00\x1a\x00\x2e\x00\x1b\x00\x2b\x00\x0a\x00\x0a\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x26\x00\x27\x00\x25\x00\x0c\x00\x0a\x00\x22\x00\x23\x00\x0b\x00\x32\x00\xff\xff\x0a\x00\x24\x00\x25\x00\x0c\x00\x0a\x00\x22\x00\x23\x00\x2e\x00\x25\x00\x0c\x00\x0a\x00\x22\x00\x23\x00\x0c\x00\xff\xff\x0d\x00\x29\x00\xff\xff\x21\x00\x0c\x00\x0a\x00\x22\x00\x23\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x1e\x00\x34\x00\x0a\x00\x1f\x00\x18\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x20\x00\x0f\x00\x29\x00\x2b\x00\x30\x00\x10\x00\x11\x00\x12\x00\x13\x00\x0a\x00\x0f\x00\x2f\x00\x32\x00\x00\x00\x10\x00\x11\x00\x12\x00\x13\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (8, 32) [
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
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
	(32 , happyReduce_32)
	]

happy_n_terms = 19 :: Prelude.Int
happy_n_nonterms = 13 :: Prelude.Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happySpecReduce_1  0# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT p (TV happy_var_1)) -> 
	happyIn11
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ pos = p , err = ["--IDENT--"] , ident = happy_var_1 , attr = Abs.Ident happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happySpecReduce_1  1# happyReduction_9
happyReduction_9 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn12
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.FLOAT) , err = ["--DOUBLE--"] , attr = (read happy_var_1 ) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happySpecReduce_1  2# happyReduction_10
happyReduction_10 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn13
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.INT) , err = ["--INTEGER--"] , attr = (read happy_var_1 ) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happySpecReduce_1  3# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn14
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.CHAR) , err = ["--CHARACTER--"] , attr = (read happy_var_1 ) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happySpecReduce_1  4# happyReduction_12
happyReduction_12 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn15
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.STRING) , err = ["--STRING--"] , attr = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_1  5# happyReduction_13
happyReduction_13 happy_x_1
	 =  happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.BOOL) , err = ["--BOOLEAN--"] , attr = Abs.Boolean_True  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happySpecReduce_1  5# happyReduction_14
happyReduction_14 happy_x_1
	 =  happyIn16
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (TS.Base TS.BOOL) , err = ["--BOOLEAN--"] , attr = Abs.Boolean_False  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_1  6# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOut18 happy_x_1 of { happy_var_1 -> 
	happyIn17
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ res = Result (Abs.ProgramStart (attr happySubAttrs_1) ) (err happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = E.emptyEnv  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happySpecReduce_2  7# happyReduction_16
happyReduction_16 happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = if E.containsVar (ident happySubAttrs_1) (env happySelfAttrs) then ["Environment already contains "++ (ident happySubAttrs_1) ++ " declared at " ++ (show (E.getVarPos (ident happySubAttrs_1) (env happySelfAttrs) )) ++ " of type: " ++ (TS.typeToString(E.getVarType (ident happySubAttrs_1) (env happySelfAttrs) ))] else (err happySubAttrs_1) , attr = (:[]) (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_3  7# happyReduction_17
happyReduction_17 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_3 of { happy_var_3 -> 
	happyIn18
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ err = if E.containsVar (ident happySubAttrs_1) (env happySelfAttrs) then ["Environment already contains " ++ (ident happySubAttrs_1) ++ " declared at " ++ (show (E.getVarPos (ident happySubAttrs_1) (env happySelfAttrs) )) ++ " of type: " ++ (TS.typeToString(E.getVarType (ident happySubAttrs_1) (env happySelfAttrs) )) ] ++ (err happySubAttrs_3) else (err happySubAttrs_1) ++ (err happySubAttrs_3) , attr = (:) (attr happySubAttrs_1) (attr happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ env = (modifiedEnv happySubAttrs_1)  }; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 } in (happyConditions,happySelfAttrs)
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happySpecReduce_1  8# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ ident = (ident happySubAttrs_1) , err = (err happySubAttrs_1) , modifiedEnv = (modifiedEnv happySubAttrs_1) , attr = Abs.Declaration (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happySpecReduce_1  8# happyReduction_19
happyReduction_19 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ ident = (ident happySubAttrs_1) , err = (err happySubAttrs_1) , modifiedEnv = (modifiedEnv happySubAttrs_1) , attr = Abs.Assignment (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ env = (env happySelfAttrs)  }; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happySpecReduce_1  9# happyReduction_20
happyReduction_20 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.INT , attr = Abs.BasicType_int  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  9# happyReduction_21
happyReduction_21 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.FLOAT , attr = Abs.BasicType_float  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_1  9# happyReduction_22
happyReduction_22 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.CHAR , attr = Abs.BasicType_char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_1  9# happyReduction_23
happyReduction_23 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.STRING , attr = Abs.BasicType_String  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_1  9# happyReduction_24
happyReduction_24 happy_x_1
	 =  happyIn20
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.Base TS.BOOL , attr = Abs.BasicType_bool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_1  10# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ attr = Abs.ValueInteger (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  10# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ attr = Abs.ValueDouble (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_1  10# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ attr = Abs.ValueChar (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_1  10# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ attr = Abs.ValueString (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_1  10# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ attr = Abs.ValueBoolean (attr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 } in (happyConditions,happySelfAttrs)
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happyReduce 4# 11# happyReduction_30
happyReduction_30 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut20 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut21 happy_x_4 of { happy_var_4 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = (btype happySubAttrs_4) , pos = (pos happySubAttrs_2) , ident = (ident happySubAttrs_2) , err = (err happySubAttrs_4) , modifiedEnv = E.insertVar (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.VarDeclaration (attr happySubAttrs_1) (attr happySubAttrs_2) (attr happySubAttrs_4)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_2 Prelude.++ happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happyReduce 5# 11# happyReduction_31
happyReduction_31 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut20 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut13 happy_x_4 of { happy_var_4 -> 
	happyIn22
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.mkArrElemTy (TS.ARRAY (attr happySubAttrs_4) (btype happySubAttrs_1) ) (btype happySubAttrs_4) , pos = (pos happySubAttrs_2) , ident = (ident happySubAttrs_2) , err = (err happySubAttrs_4) , modifiedEnv = E.insertVar (ident happySubAttrs_2) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.ArrayDeclaration (attr happySubAttrs_1) (attr happySubAttrs_2) (attr happySubAttrs_4)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_2 Prelude.++ happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happyReduce 5# 12# happyReduction_32
happyReduction_32 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	case happyOut11 happy_x_5 of { happy_var_5 -> 
	happyIn23
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ btype = TS.sup (E.getVarType (ident happySubAttrs_3) (env happySelfAttrs) ) (E.getVarType (ident happySubAttrs_5) (env happySelfAttrs) ) , pos = (pos happySubAttrs_1) , ident = (ident happySubAttrs_1) , err = ["Assignment"] , modifiedEnv = E.insertVar (ident happySubAttrs_1) (posLineCol (pos happySelfAttrs) ) (btype happySelfAttrs) (env happySelfAttrs) , attr = Abs.SumAssignment (attr happySubAttrs_1) (attr happySubAttrs_3) (attr happySubAttrs_5)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; happyConditions = [] Prelude.++ happyConditions_1 Prelude.++ happyConditions_3 Prelude.++ happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest}}}

happyNewToken action sts stk [] =
	happyDoAction 18# notHappyAtAll action sts stk []

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
	PT _ (TV happy_dollar_dollar) -> cont 13#;
	PT _ (TC happy_dollar_dollar) -> cont 14#;
	PT _ (TD happy_dollar_dollar) -> cont 15#;
	PT _ (TI happy_dollar_dollar) -> cont 16#;
	PT _ (TL happy_dollar_dollar) -> cont 17#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 18# tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {x' = happyOut17 x} in x'))

do_pListStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (let {x' = happyOut18 x} in x'))

do_pStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (let {x' = happyOut19 x} in x'))

do_pBasicType tks = happySomeParser where
 happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (let {x' = happyOut20 x} in x'))

do_pBoolean tks = happySomeParser where
 happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (let {x' = happyOut16 x} in x'))

do_pValue tks = happySomeParser where
 happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (let {x' = happyOut21 x} in x'))

do_pDecl tks = happySomeParser where
 happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (let {x' = happyOut22 x} in x'))

do_pAss tks = happySomeParser where
 happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (let {x' = happyOut23 x} in x'))

pProgram toks = do { f <- do_pProgram toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pListStm toks = do { f <- do_pListStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pStm toks = do { f <- do_pStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pBasicType toks = do { f <- do_pBasicType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pBoolean toks = do { f <- do_pBoolean toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pValue toks = do { f <- do_pValue toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pDecl toks = do { f <- do_pDecl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

pAss toks = do { f <- do_pAss toks; let { (conds,attrs) = f happyEmptyAttrs } in do { Prelude.sequence_ conds; Prelude.return (res attrs) }}

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
