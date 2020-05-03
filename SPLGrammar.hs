{-# OPTIONS_GHC -w #-}
module SPLGrammar where 
import SPLTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (Exp)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,500) ([15936,10304,1472,992,644,16476,65410,7,0,0,0,0,0,0,0,0,0,32,0,4096,4,8,15872,10304,1472,992,644,92,16446,49192,5,32768,0,0,0,0,0,128,0,0,8,0,0,0,48704,12287,1472,996,644,92,0,0,0,0,0,15936,10304,1472,0,0,0,16446,49192,57349,33795,23554,15872,10304,1472,992,644,92,16446,49192,57349,33795,23554,15872,10304,1472,2016,644,92,16446,49192,57349,33795,23554,15872,10304,1472,992,644,92,16446,49192,57349,33795,23554,15872,43072,1472,63520,1151,0,65410,23,8192,0,0,0,0,62,992,2692,92,16446,49192,1029,4,8,15936,10304,1472,0,0,0,64,0,57344,33795,23554,0,0,0,0,0,0,16446,49320,5,0,16,33280,2047,1,63524,127,0,14,0,0,32768,0,0,2048,0,0,128,0,0,8,0,32768,0,0,0,0,0,0,0,65410,23,57344,0,0,33280,6143,0,63520,383,0,31746,0,8192,1984,0,512,1660,0,49184,103,0,16386,0,8192,1024,0,512,64,0,32,4,0,64514,7,8192,32704,0,512,2044,0,0,0,0,0,32,0,0,2,0,0,1,8,0,32768,0,0,2048,0,0,64,0,0,0,256,0,16446,49192,57349,33795,23554,0,4096,0,0,256,0,0,256,0,0,0,16384,0,0,4,0,16384,65410,7,57344,0,0,0,0,0,0,4096,0,0,0,0,0,0,15872,10304,1472,4,0,0,0,0,0,0,0,33280,6143,0,63520,383,0,0,0,0,0,0,3584,0,0,224,0,0,14,0,0,0,1,15936,10304,1472,996,644,92,0,64,0,0,4,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9216,32760,0,64,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,32,58368,33795,23554,0,16384,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","ValList","Exp","nl","','","'.'","int","bool","string","var","varName","'='","'=='","and","or","'<'","'>'","'<='","'>='","not","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","length","pop","push","enq","deq","print","readLine","if","else","while","%eof"]
        bit_start = st * 44
        bit_end = (st + 1) * 44
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..43]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_17
action_0 (10) = happyShift action_3
action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (39) = happyShift action_11
action_0 (40) = happyShift action_12
action_0 (41) = happyShift action_13
action_0 (43) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (6) = happyGoto action_16
action_0 _ = happyReduce_5

action_1 (10) = happyShift action_3
action_1 (11) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (13) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (23) = happyShift action_8
action_1 (28) = happyShift action_9
action_1 (30) = happyShift action_10
action_1 (39) = happyShift action_11
action_1 (40) = happyShift action_12
action_1 (41) = happyShift action_13
action_1 (43) = happyShift action_14
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_44
action_2 (10) = happyShift action_45
action_2 (16) = happyShift action_22
action_2 (17) = happyShift action_23
action_2 (18) = happyShift action_24
action_2 (19) = happyShift action_25
action_2 (20) = happyShift action_26
action_2 (21) = happyShift action_27
action_2 (22) = happyShift action_28
action_2 (23) = happyShift action_46
action_2 (24) = happyShift action_30
action_2 (25) = happyShift action_31
action_2 (26) = happyShift action_32
action_2 (27) = happyShift action_33
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_28

action_4 _ = happyReduce_30

action_5 _ = happyReduce_31

action_6 (14) = happyShift action_43
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (9) = happyShift action_40
action_7 (15) = happyShift action_41
action_7 (32) = happyShift action_42
action_7 _ = happyReduce_34

action_8 (10) = happyShift action_3
action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (23) = happyShift action_8
action_8 (28) = happyShift action_9
action_8 (30) = happyShift action_10
action_8 (39) = happyShift action_11
action_8 (40) = happyShift action_12
action_8 (41) = happyShift action_13
action_8 (43) = happyShift action_14
action_8 (6) = happyGoto action_39
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_3
action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (23) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (30) = happyShift action_10
action_9 (39) = happyShift action_11
action_9 (40) = happyShift action_12
action_9 (41) = happyShift action_13
action_9 (43) = happyShift action_14
action_9 (6) = happyGoto action_38
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_3
action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (23) = happyShift action_8
action_10 (28) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (39) = happyShift action_11
action_10 (40) = happyShift action_12
action_10 (41) = happyShift action_13
action_10 (43) = happyShift action_14
action_10 (6) = happyGoto action_37
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (28) = happyShift action_36
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_48

action_13 (28) = happyShift action_35
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (28) = happyShift action_34
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (44) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (16) = happyShift action_22
action_16 (17) = happyShift action_23
action_16 (18) = happyShift action_24
action_16 (19) = happyShift action_25
action_16 (20) = happyShift action_26
action_16 (21) = happyShift action_27
action_16 (22) = happyShift action_28
action_16 (23) = happyShift action_29
action_16 (24) = happyShift action_30
action_16 (25) = happyShift action_31
action_16 (26) = happyShift action_32
action_16 (27) = happyShift action_33
action_16 (28) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (31) = happyReduce_5
action_16 (39) = happyShift action_11
action_16 (40) = happyShift action_12
action_16 (41) = happyShift action_13
action_16 (43) = happyShift action_14
action_16 (44) = happyReduce_5
action_16 (4) = happyGoto action_19
action_16 (6) = happyGoto action_16
action_16 _ = happyReduce_5

action_17 (7) = happyShift action_17
action_17 (10) = happyShift action_3
action_17 (11) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (13) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (23) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (39) = happyShift action_11
action_17 (40) = happyShift action_12
action_17 (41) = happyShift action_13
action_17 (43) = happyShift action_14
action_17 (4) = happyGoto action_18
action_17 (6) = happyGoto action_16
action_17 _ = happyReduce_5

action_18 _ = happyReduce_2

action_19 _ = happyReduce_3

action_20 (7) = happyShift action_17
action_20 (10) = happyShift action_3
action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (30) = happyShift action_10
action_20 (39) = happyShift action_11
action_20 (40) = happyShift action_12
action_20 (41) = happyShift action_13
action_20 (43) = happyShift action_14
action_20 (4) = happyGoto action_77
action_20 (6) = happyGoto action_16
action_20 _ = happyReduce_5

action_21 (7) = happyReduce_28
action_21 (10) = happyReduce_28
action_21 (11) = happyReduce_28
action_21 (12) = happyReduce_28
action_21 (13) = happyReduce_28
action_21 (14) = happyReduce_28
action_21 (16) = happyReduce_28
action_21 (17) = happyReduce_28
action_21 (18) = happyReduce_28
action_21 (19) = happyReduce_28
action_21 (20) = happyReduce_28
action_21 (21) = happyReduce_28
action_21 (22) = happyReduce_28
action_21 (23) = happyReduce_28
action_21 (24) = happyReduce_28
action_21 (25) = happyReduce_28
action_21 (26) = happyReduce_28
action_21 (27) = happyReduce_28
action_21 (28) = happyReduce_28
action_21 (30) = happyReduce_28
action_21 (31) = happyReduce_28
action_21 (39) = happyReduce_28
action_21 (40) = happyReduce_28
action_21 (41) = happyReduce_28
action_21 (43) = happyReduce_28
action_21 (44) = happyReduce_28
action_21 _ = happyReduce_28

action_22 (10) = happyShift action_3
action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (39) = happyShift action_11
action_22 (40) = happyShift action_12
action_22 (41) = happyShift action_13
action_22 (43) = happyShift action_14
action_22 (6) = happyGoto action_76
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (10) = happyShift action_3
action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (39) = happyShift action_11
action_23 (40) = happyShift action_12
action_23 (41) = happyShift action_13
action_23 (43) = happyShift action_14
action_23 (6) = happyGoto action_75
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (10) = happyShift action_3
action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (39) = happyShift action_11
action_24 (40) = happyShift action_12
action_24 (41) = happyShift action_13
action_24 (43) = happyShift action_14
action_24 (6) = happyGoto action_74
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_3
action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (39) = happyShift action_11
action_25 (40) = happyShift action_12
action_25 (41) = happyShift action_13
action_25 (43) = happyShift action_14
action_25 (6) = happyGoto action_73
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_3
action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (39) = happyShift action_11
action_26 (40) = happyShift action_12
action_26 (41) = happyShift action_13
action_26 (43) = happyShift action_14
action_26 (6) = happyGoto action_72
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (10) = happyShift action_3
action_27 (11) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (14) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (39) = happyShift action_11
action_27 (40) = happyShift action_12
action_27 (41) = happyShift action_13
action_27 (43) = happyShift action_14
action_27 (6) = happyGoto action_71
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (10) = happyShift action_3
action_28 (11) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (13) = happyShift action_6
action_28 (14) = happyShift action_7
action_28 (23) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (39) = happyShift action_11
action_28 (40) = happyShift action_12
action_28 (41) = happyShift action_13
action_28 (43) = happyShift action_14
action_28 (6) = happyGoto action_70
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (10) = happyShift action_3
action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (14) = happyShift action_7
action_29 (15) = happyShift action_47
action_29 (23) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (39) = happyShift action_11
action_29 (40) = happyShift action_12
action_29 (41) = happyShift action_13
action_29 (43) = happyShift action_14
action_29 (6) = happyGoto action_39
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (10) = happyShift action_3
action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (23) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (39) = happyShift action_11
action_30 (40) = happyShift action_12
action_30 (41) = happyShift action_13
action_30 (43) = happyShift action_14
action_30 (6) = happyGoto action_69
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_3
action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (14) = happyShift action_7
action_31 (23) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (39) = happyShift action_11
action_31 (40) = happyShift action_12
action_31 (41) = happyShift action_13
action_31 (43) = happyShift action_14
action_31 (6) = happyGoto action_68
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (10) = happyShift action_3
action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (23) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (39) = happyShift action_11
action_32 (40) = happyShift action_12
action_32 (41) = happyShift action_13
action_32 (43) = happyShift action_14
action_32 (6) = happyGoto action_67
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_3
action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (23) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (39) = happyShift action_11
action_33 (40) = happyShift action_12
action_33 (41) = happyShift action_13
action_33 (43) = happyShift action_14
action_33 (6) = happyGoto action_66
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (10) = happyShift action_3
action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (14) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (39) = happyShift action_11
action_34 (40) = happyShift action_12
action_34 (41) = happyShift action_13
action_34 (43) = happyShift action_14
action_34 (6) = happyGoto action_65
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_3
action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (23) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (39) = happyShift action_11
action_35 (40) = happyShift action_12
action_35 (41) = happyShift action_13
action_35 (43) = happyShift action_14
action_35 (6) = happyGoto action_64
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_3
action_36 (11) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (13) = happyShift action_6
action_36 (14) = happyShift action_7
action_36 (23) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (30) = happyShift action_10
action_36 (32) = happyShift action_63
action_36 (39) = happyShift action_11
action_36 (40) = happyShift action_12
action_36 (41) = happyShift action_13
action_36 (43) = happyShift action_14
action_36 (6) = happyGoto action_62
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (10) = happyShift action_45
action_37 (16) = happyShift action_22
action_37 (17) = happyShift action_23
action_37 (18) = happyShift action_24
action_37 (19) = happyShift action_25
action_37 (20) = happyShift action_26
action_37 (21) = happyShift action_27
action_37 (22) = happyShift action_28
action_37 (23) = happyShift action_46
action_37 (24) = happyShift action_30
action_37 (25) = happyShift action_31
action_37 (26) = happyShift action_32
action_37 (27) = happyShift action_33
action_37 (31) = happyShift action_61
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_45
action_38 (16) = happyShift action_22
action_38 (17) = happyShift action_23
action_38 (18) = happyShift action_24
action_38 (19) = happyShift action_25
action_38 (20) = happyShift action_26
action_38 (21) = happyShift action_27
action_38 (22) = happyShift action_28
action_38 (23) = happyShift action_46
action_38 (24) = happyShift action_30
action_38 (25) = happyShift action_31
action_38 (26) = happyShift action_32
action_38 (27) = happyShift action_33
action_38 (29) = happyShift action_60
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_45
action_39 _ = happyReduce_25

action_40 (34) = happyShift action_55
action_40 (35) = happyShift action_56
action_40 (36) = happyShift action_57
action_40 (37) = happyShift action_58
action_40 (38) = happyShift action_59
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_3
action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (14) = happyShift action_7
action_41 (23) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (32) = happyShift action_54
action_41 (39) = happyShift action_11
action_41 (40) = happyShift action_12
action_41 (41) = happyShift action_13
action_41 (43) = happyShift action_14
action_41 (6) = happyGoto action_53
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_3
action_42 (11) = happyShift action_4
action_42 (12) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (14) = happyShift action_7
action_42 (23) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (39) = happyShift action_11
action_42 (40) = happyShift action_12
action_42 (41) = happyShift action_13
action_42 (43) = happyShift action_14
action_42 (6) = happyGoto action_52
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_49
action_43 (15) = happyShift action_50
action_43 (32) = happyShift action_51
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_17
action_44 (10) = happyShift action_3
action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (23) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (30) = happyShift action_10
action_44 (39) = happyShift action_11
action_44 (40) = happyShift action_12
action_44 (41) = happyShift action_13
action_44 (43) = happyShift action_14
action_44 (4) = happyGoto action_48
action_44 (6) = happyGoto action_16
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_29

action_46 (15) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (10) = happyShift action_3
action_47 (11) = happyShift action_4
action_47 (12) = happyShift action_5
action_47 (13) = happyShift action_6
action_47 (14) = happyShift action_7
action_47 (23) = happyShift action_8
action_47 (28) = happyShift action_9
action_47 (30) = happyShift action_10
action_47 (39) = happyShift action_11
action_47 (40) = happyShift action_12
action_47 (41) = happyShift action_13
action_47 (43) = happyShift action_14
action_47 (6) = happyGoto action_96
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_37

action_50 (10) = happyShift action_3
action_50 (11) = happyShift action_4
action_50 (12) = happyShift action_5
action_50 (13) = happyShift action_6
action_50 (14) = happyShift action_7
action_50 (23) = happyShift action_8
action_50 (28) = happyShift action_9
action_50 (30) = happyShift action_10
action_50 (32) = happyShift action_95
action_50 (39) = happyShift action_11
action_50 (40) = happyShift action_12
action_50 (41) = happyShift action_13
action_50 (43) = happyShift action_14
action_50 (6) = happyGoto action_94
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (33) = happyShift action_93
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_45
action_52 (16) = happyShift action_22
action_52 (17) = happyShift action_23
action_52 (18) = happyShift action_24
action_52 (19) = happyShift action_25
action_52 (20) = happyShift action_26
action_52 (21) = happyShift action_27
action_52 (22) = happyShift action_28
action_52 (23) = happyShift action_46
action_52 (24) = happyShift action_30
action_52 (25) = happyShift action_31
action_52 (26) = happyShift action_32
action_52 (27) = happyShift action_33
action_52 (33) = happyShift action_92
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_91
action_53 (10) = happyShift action_45
action_53 (16) = happyShift action_22
action_53 (17) = happyShift action_23
action_53 (18) = happyShift action_24
action_53 (19) = happyShift action_25
action_53 (20) = happyShift action_26
action_53 (21) = happyShift action_27
action_53 (22) = happyShift action_28
action_53 (23) = happyShift action_46
action_53 (24) = happyShift action_30
action_53 (25) = happyShift action_31
action_53 (26) = happyShift action_32
action_53 (27) = happyShift action_33
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (10) = happyShift action_81
action_54 (11) = happyShift action_82
action_54 (12) = happyShift action_83
action_54 (5) = happyGoto action_90
action_54 _ = happyReduce_12

action_55 (28) = happyShift action_89
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_88
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (28) = happyShift action_87
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (28) = happyShift action_86
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (28) = happyShift action_85
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_26

action_61 _ = happyReduce_27

action_62 (10) = happyShift action_45
action_62 (16) = happyShift action_22
action_62 (17) = happyShift action_23
action_62 (18) = happyShift action_24
action_62 (19) = happyShift action_25
action_62 (20) = happyShift action_26
action_62 (21) = happyShift action_27
action_62 (22) = happyShift action_28
action_62 (23) = happyShift action_46
action_62 (24) = happyShift action_30
action_62 (25) = happyShift action_31
action_62 (26) = happyShift action_32
action_62 (27) = happyShift action_33
action_62 (29) = happyShift action_84
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_81
action_63 (11) = happyShift action_82
action_63 (12) = happyShift action_83
action_63 (5) = happyGoto action_80
action_63 _ = happyReduce_12

action_64 (10) = happyShift action_45
action_64 (16) = happyShift action_22
action_64 (17) = happyShift action_23
action_64 (18) = happyShift action_24
action_64 (19) = happyShift action_25
action_64 (20) = happyShift action_26
action_64 (21) = happyShift action_27
action_64 (22) = happyShift action_28
action_64 (23) = happyShift action_46
action_64 (24) = happyShift action_30
action_64 (25) = happyShift action_31
action_64 (26) = happyShift action_32
action_64 (27) = happyShift action_33
action_64 (29) = happyShift action_79
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (10) = happyShift action_45
action_65 (16) = happyShift action_22
action_65 (17) = happyShift action_23
action_65 (18) = happyShift action_24
action_65 (19) = happyShift action_25
action_65 (20) = happyShift action_26
action_65 (21) = happyShift action_27
action_65 (22) = happyShift action_28
action_65 (23) = happyShift action_46
action_65 (24) = happyShift action_30
action_65 (25) = happyShift action_31
action_65 (26) = happyShift action_32
action_65 (27) = happyShift action_33
action_65 (29) = happyShift action_78
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_45
action_66 (19) = happyShift action_25
action_66 (20) = happyShift action_26
action_66 (21) = happyShift action_27
action_66 (22) = happyShift action_28
action_66 (23) = happyShift action_46
action_66 _ = happyReduce_16

action_67 (10) = happyShift action_45
action_67 (19) = happyShift action_25
action_67 (20) = happyShift action_26
action_67 (21) = happyShift action_27
action_67 (22) = happyShift action_28
action_67 (23) = happyShift action_46
action_67 _ = happyReduce_15

action_68 (10) = happyShift action_45
action_68 (19) = happyShift action_25
action_68 (20) = happyShift action_26
action_68 (21) = happyShift action_27
action_68 (22) = happyShift action_28
action_68 (23) = happyShift action_46
action_68 (26) = happyShift action_32
action_68 (27) = happyShift action_33
action_68 _ = happyReduce_14

action_69 (10) = happyShift action_45
action_69 (19) = happyShift action_25
action_69 (20) = happyShift action_26
action_69 (21) = happyShift action_27
action_69 (22) = happyShift action_28
action_69 (23) = happyShift action_46
action_69 (26) = happyShift action_32
action_69 (27) = happyShift action_33
action_69 _ = happyReduce_13

action_70 (10) = happyShift action_45
action_70 (23) = happyShift action_46
action_70 _ = happyReduce_22

action_71 (10) = happyShift action_45
action_71 (23) = happyShift action_46
action_71 _ = happyReduce_21

action_72 (10) = happyShift action_45
action_72 (23) = happyShift action_46
action_72 _ = happyReduce_20

action_73 (10) = happyShift action_45
action_73 (23) = happyShift action_46
action_73 _ = happyReduce_19

action_74 (10) = happyShift action_45
action_74 (19) = happyShift action_25
action_74 (20) = happyShift action_26
action_74 (21) = happyShift action_27
action_74 (22) = happyShift action_28
action_74 (23) = happyShift action_46
action_74 (24) = happyShift action_30
action_74 (25) = happyShift action_31
action_74 (26) = happyShift action_32
action_74 (27) = happyShift action_33
action_74 _ = happyReduce_24

action_75 (10) = happyShift action_45
action_75 (19) = happyShift action_25
action_75 (20) = happyShift action_26
action_75 (21) = happyShift action_27
action_75 (22) = happyShift action_28
action_75 (23) = happyShift action_46
action_75 (24) = happyShift action_30
action_75 (25) = happyShift action_31
action_75 (26) = happyShift action_32
action_75 (27) = happyShift action_33
action_75 _ = happyReduce_23

action_76 (10) = happyShift action_45
action_76 (19) = happyShift action_25
action_76 (20) = happyShift action_26
action_76 (21) = happyShift action_27
action_76 (22) = happyShift action_28
action_76 (23) = happyShift action_46
action_76 (24) = happyShift action_30
action_76 (25) = happyShift action_31
action_76 (26) = happyShift action_32
action_76 (27) = happyShift action_33
action_76 _ = happyReduce_17

action_77 (31) = happyReduce_1
action_77 (44) = happyReduce_1
action_77 _ = happyReduce_1

action_78 (30) = happyShift action_113
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (30) = happyShift action_112
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (33) = happyShift action_111
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (8) = happyShift action_110
action_81 _ = happyReduce_9

action_82 (8) = happyShift action_109
action_82 _ = happyReduce_11

action_83 (8) = happyShift action_108
action_83 _ = happyReduce_10

action_84 (7) = happyShift action_107
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (29) = happyShift action_106
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (10) = happyShift action_3
action_86 (11) = happyShift action_4
action_86 (12) = happyShift action_5
action_86 (13) = happyShift action_6
action_86 (14) = happyShift action_7
action_86 (23) = happyShift action_8
action_86 (28) = happyShift action_9
action_86 (30) = happyShift action_10
action_86 (39) = happyShift action_11
action_86 (40) = happyShift action_12
action_86 (41) = happyShift action_13
action_86 (43) = happyShift action_14
action_86 (6) = happyGoto action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (10) = happyShift action_3
action_87 (11) = happyShift action_4
action_87 (12) = happyShift action_5
action_87 (13) = happyShift action_6
action_87 (14) = happyShift action_7
action_87 (23) = happyShift action_8
action_87 (28) = happyShift action_9
action_87 (30) = happyShift action_10
action_87 (39) = happyShift action_11
action_87 (40) = happyShift action_12
action_87 (41) = happyShift action_13
action_87 (43) = happyShift action_14
action_87 (6) = happyGoto action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (29) = happyShift action_103
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (29) = happyShift action_102
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (33) = happyShift action_101
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_40

action_92 (15) = happyShift action_100
action_92 _ = happyReduce_35

action_93 (7) = happyShift action_99
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (7) = happyShift action_98
action_94 (10) = happyShift action_45
action_94 (16) = happyShift action_22
action_94 (17) = happyShift action_23
action_94 (18) = happyShift action_24
action_94 (19) = happyShift action_25
action_94 (20) = happyShift action_26
action_94 (21) = happyShift action_27
action_94 (22) = happyShift action_28
action_94 (23) = happyShift action_46
action_94 (24) = happyShift action_30
action_94 (25) = happyShift action_31
action_94 (26) = happyShift action_32
action_94 (27) = happyShift action_33
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (10) = happyShift action_81
action_95 (11) = happyShift action_82
action_95 (12) = happyShift action_83
action_95 (5) = happyGoto action_97
action_95 _ = happyReduce_12

action_96 (10) = happyShift action_45
action_96 (16) = happyShift action_22
action_96 (17) = happyShift action_23
action_96 (18) = happyShift action_24
action_96 (19) = happyShift action_25
action_96 (20) = happyShift action_26
action_96 (21) = happyShift action_27
action_96 (22) = happyShift action_28
action_96 (23) = happyShift action_46
action_96 (24) = happyShift action_30
action_96 (25) = happyShift action_31
action_96 (26) = happyShift action_32
action_96 (27) = happyShift action_33
action_96 _ = happyReduce_18

action_97 (33) = happyShift action_124
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_42

action_99 _ = happyReduce_38

action_100 (10) = happyShift action_3
action_100 (11) = happyShift action_4
action_100 (12) = happyShift action_5
action_100 (13) = happyShift action_6
action_100 (14) = happyShift action_7
action_100 (23) = happyShift action_8
action_100 (28) = happyShift action_9
action_100 (30) = happyShift action_10
action_100 (39) = happyShift action_11
action_100 (40) = happyShift action_12
action_100 (41) = happyShift action_13
action_100 (43) = happyShift action_14
action_100 (6) = happyGoto action_123
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (7) = happyShift action_122
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_43

action_103 _ = happyReduce_44

action_104 (10) = happyShift action_45
action_104 (16) = happyShift action_22
action_104 (17) = happyShift action_23
action_104 (18) = happyShift action_24
action_104 (19) = happyShift action_25
action_104 (20) = happyShift action_26
action_104 (21) = happyShift action_27
action_104 (22) = happyShift action_28
action_104 (23) = happyShift action_46
action_104 (24) = happyShift action_30
action_104 (25) = happyShift action_31
action_104 (26) = happyShift action_32
action_104 (27) = happyShift action_33
action_104 (29) = happyShift action_121
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (10) = happyShift action_45
action_105 (16) = happyShift action_22
action_105 (17) = happyShift action_23
action_105 (18) = happyShift action_24
action_105 (19) = happyShift action_25
action_105 (20) = happyShift action_26
action_105 (21) = happyShift action_27
action_105 (22) = happyShift action_28
action_105 (23) = happyShift action_46
action_105 (24) = happyShift action_30
action_105 (25) = happyShift action_31
action_105 (26) = happyShift action_32
action_105 (27) = happyShift action_33
action_105 (29) = happyShift action_120
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_45

action_107 _ = happyReduce_32

action_108 (10) = happyShift action_81
action_108 (11) = happyShift action_82
action_108 (12) = happyShift action_83
action_108 (5) = happyGoto action_119
action_108 _ = happyReduce_12

action_109 (10) = happyShift action_81
action_109 (11) = happyShift action_82
action_109 (12) = happyShift action_83
action_109 (5) = happyGoto action_118
action_109 _ = happyReduce_12

action_110 (10) = happyShift action_81
action_110 (11) = happyShift action_82
action_110 (12) = happyShift action_83
action_110 (5) = happyGoto action_117
action_110 _ = happyReduce_12

action_111 (29) = happyShift action_116
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (7) = happyShift action_17
action_112 (10) = happyShift action_3
action_112 (11) = happyShift action_4
action_112 (12) = happyShift action_5
action_112 (13) = happyShift action_6
action_112 (14) = happyShift action_7
action_112 (23) = happyShift action_8
action_112 (28) = happyShift action_9
action_112 (30) = happyShift action_10
action_112 (39) = happyShift action_11
action_112 (40) = happyShift action_12
action_112 (41) = happyShift action_13
action_112 (43) = happyShift action_14
action_112 (4) = happyGoto action_115
action_112 (6) = happyGoto action_16
action_112 _ = happyReduce_5

action_113 (7) = happyShift action_17
action_113 (10) = happyShift action_3
action_113 (11) = happyShift action_4
action_113 (12) = happyShift action_5
action_113 (13) = happyShift action_6
action_113 (14) = happyShift action_7
action_113 (23) = happyShift action_8
action_113 (28) = happyShift action_9
action_113 (30) = happyShift action_10
action_113 (39) = happyShift action_11
action_113 (40) = happyShift action_12
action_113 (41) = happyShift action_13
action_113 (43) = happyShift action_14
action_113 (4) = happyGoto action_114
action_113 (6) = happyGoto action_16
action_113 _ = happyReduce_5

action_114 (31) = happyShift action_129
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (31) = happyShift action_128
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (7) = happyShift action_127
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_6

action_118 _ = happyReduce_8

action_119 _ = happyReduce_7

action_120 _ = happyReduce_47

action_121 _ = happyReduce_46

action_122 _ = happyReduce_41

action_123 (7) = happyShift action_126
action_123 (10) = happyShift action_45
action_123 (16) = happyShift action_22
action_123 (17) = happyShift action_23
action_123 (18) = happyShift action_24
action_123 (19) = happyShift action_25
action_123 (20) = happyShift action_26
action_123 (21) = happyShift action_27
action_123 (22) = happyShift action_28
action_123 (23) = happyShift action_46
action_123 (24) = happyShift action_30
action_123 (25) = happyShift action_31
action_123 (26) = happyShift action_32
action_123 (27) = happyShift action_33
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (7) = happyShift action_125
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_39

action_126 _ = happyReduce_36

action_127 _ = happyReduce_33

action_128 (42) = happyShift action_130
action_128 _ = happyReduce_50

action_129 _ = happyReduce_51

action_130 (30) = happyShift action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (7) = happyShift action_17
action_131 (10) = happyShift action_3
action_131 (11) = happyShift action_4
action_131 (12) = happyShift action_5
action_131 (13) = happyShift action_6
action_131 (14) = happyShift action_7
action_131 (23) = happyShift action_8
action_131 (28) = happyShift action_9
action_131 (30) = happyShift action_10
action_131 (39) = happyShift action_11
action_131 (40) = happyShift action_12
action_131 (41) = happyShift action_13
action_131 (43) = happyShift action_14
action_131 (4) = happyGoto action_132
action_131 (6) = happyGoto action_16
action_131 _ = happyReduce_5

action_132 (31) = happyShift action_133
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_49

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_0  4 happyReduction_5
happyReduction_5  =  HappyAbsSyn4
		 ([]
	)

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 ((Int happy_var_1) : happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 ((String happy_var_1) : happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 ((Bool happy_var_1) : happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 ([Int happy_var_1]
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 ([String happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 ([Bool happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_0  5 happyReduction_12
happyReduction_12  =  HappyAbsSyn5
		 ([]
	)

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 6 happyReduction_18
happyReduction_18 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (NOT (IsEq happy_var_1 happy_var_4)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsMore happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsLess happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsMore happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AND happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (NOT happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  6 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Int happy_var_1)
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  6 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _ happy_var_2))
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 (Type (Int happy_var_2))
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Bool happy_var_1)
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (String happy_var_1)
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 6 happyReduction_32
happyReduction_32 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 7 6 happyReduction_33
happyReduction_33 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Print (Type (Arr happy_var_4))
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_1  6 happyReduction_34
happyReduction_34 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn6
		 (Lookup happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (GetIndex happy_var_3 (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 7 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AssignArr happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 _
	(HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (Declare happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Declare happy_var_2
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 7 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclareWithVal happy_var_2 (Type (Arr happy_var_5))
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 6 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 6 6 happyReduction_41
happyReduction_41 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 (Type (Arr happy_var_4))
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 6 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 5 6 happyReduction_43
happyReduction_43 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Length (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 5 6 happyReduction_44
happyReduction_44 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pop (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_45 = happyReduce 5 6 happyReduction_45
happyReduction_45 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeQ (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 6 6 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Push happy_var_5 (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_47 = happyReduce 6 6 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (EnQ happy_var_5 (Lookup happy_var_1)
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_1  6 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn6
		 (ReadLine
	)

happyReduce_49 = happyReduce 11 6 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfElse happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 7 6 happyReduction_50
happyReduction_50 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IfElse happy_var_3 happy_var_6 []
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 7 6 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNewLine _ -> cont 7;
	TokenComma _ -> cont 8;
	TokenDot _ -> cont 9;
	TokenInt _ happy_dollar_dollar -> cont 10;
	TokenBool _ happy_dollar_dollar -> cont 11;
	TokenString _ happy_dollar_dollar -> cont 12;
	TokenVar _ -> cont 13;
	TokenName _ happy_dollar_dollar -> cont 14;
	TokenEq _ -> cont 15;
	TokenIsEq _ -> cont 16;
	TokenAND _ -> cont 17;
	TokenOR _ -> cont 18;
	TokenLess _ -> cont 19;
	TokenMore _ -> cont 20;
	TokenLessEq _ -> cont 21;
	TokenMoreEq _ -> cont 22;
	TokenNOT _ -> cont 23;
	TokenPlus _ -> cont 24;
	TokenMinus _ -> cont 25;
	TokenTimes _ -> cont 26;
	TokenDiv _ -> cont 27;
	TokenLParen _ -> cont 28;
	TokenRParen _ -> cont 29;
	TokenLCurly _ -> cont 30;
	TokenRCurly _ -> cont 31;
	TokenLStraight _ -> cont 32;
	TokenRStraight _ -> cont 33;
	TokenLength _ -> cont 34;
	TokenPop _ -> cont 35;
	TokenPush _ -> cont 36;
	TokenEnQ _ -> cont 37;
	TokenDeQ _ -> cont 38;
	TokenPrint _ -> cont 39;
	TokenReadLine _ -> cont 40;
	TokenIf _ -> cont 41;
	TokenElse _ -> cont 42;
	TokenWhile _ -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Bool Bool  | Int Int | String String | Arr [Type] | NULL
    deriving (Eq, Show)

data Exp = Type Type

        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 

        | IsEq Exp Exp
        | IsLess Exp Exp
        | IsMore Exp Exp
        | MoreEq Exp Exp
        | AND Exp Exp
        | OR Exp Exp
        | NOT Exp
        
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | AssignArr String Exp Exp
        | Lookup String

        |GetIndex Exp Exp
        |Length Exp
        
        |Pop Exp
        |DeQ Exp

        |Push Exp Exp
        |EnQ Exp Exp
        
        | Print Exp
        | ReadLine
        | IfElse Exp [Exp] [Exp]

        |While Exp [Exp]
         deriving Show
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc1900_0/ghc_2.h" #-}


























































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
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
