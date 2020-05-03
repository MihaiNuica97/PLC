{-# OPTIONS_GHC -w #-}
module SPLGrammar where 
import SPLTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 (Exp)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,231) ([4064,59920,16128,43072,515,7934,0,0,0,0,0,0,0,0,0,512,0,4096,0,16128,43072,64515,41216,61454,33795,58,0,2,0,0,0,32,0,0,61408,60415,16256,43072,3,0,0,0,57344,4111,234,16447,936,252,3745,1008,14980,4032,59920,16128,43072,64515,41216,61454,33795,49210,4111,234,16447,936,252,3745,1008,14980,4032,59920,16128,43072,3,7934,1,31736,1,0,0,16447,936,258,0,0,0,4064,59920,0,0,0,0,61440,33795,8250,61408,1,0,0,0,0,63488,379,57344,1519,0,60,0,240,0,25536,0,36608,1,0,0,0,0,0,0,0,0,0,1980,0,7920,0,31680,0,0,0,0,32,2,0,0,0,57376,495,0,0,0,0,63488,33795,58,0,16,0,1024,0,128,1016,14980,0,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","Exp","nl","int","true","false","string","var","varName","'='","'=='","and","or","'<'","'>'","'<='","'>='","not","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","print","readLine","if","else","%eof"]
        bit_start = st * 34
        bit_end = (st + 1) * 34
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..33]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_17
action_0 (7) = happyShift action_3
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_7
action_0 (12) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (30) = happyShift action_12
action_0 (31) = happyShift action_13
action_0 (32) = happyShift action_14
action_0 (4) = happyGoto action_15
action_0 (5) = happyGoto action_16
action_0 _ = happyReduce_5

action_1 (7) = happyShift action_3
action_1 (8) = happyShift action_4
action_1 (9) = happyShift action_5
action_1 (10) = happyShift action_6
action_1 (11) = happyShift action_7
action_1 (12) = happyShift action_8
action_1 (21) = happyShift action_9
action_1 (26) = happyShift action_10
action_1 (28) = happyShift action_11
action_1 (30) = happyShift action_12
action_1 (31) = happyShift action_13
action_1 (32) = happyShift action_14
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_40
action_2 (14) = happyShift action_21
action_2 (15) = happyShift action_22
action_2 (16) = happyShift action_23
action_2 (17) = happyShift action_24
action_2 (18) = happyShift action_25
action_2 (19) = happyShift action_26
action_2 (20) = happyShift action_27
action_2 (22) = happyShift action_28
action_2 (23) = happyShift action_29
action_2 (24) = happyShift action_30
action_2 (25) = happyShift action_31
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (7) = happyFail []
action_3 _ = happyReduce_20

action_4 _ = happyReduce_22

action_5 _ = happyReduce_23

action_6 _ = happyReduce_24

action_7 (12) = happyShift action_38
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (13) = happyShift action_37
action_8 _ = happyReduce_26

action_9 (7) = happyShift action_3
action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_7
action_9 (12) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (28) = happyShift action_11
action_9 (30) = happyShift action_12
action_9 (31) = happyShift action_13
action_9 (32) = happyShift action_14
action_9 (5) = happyGoto action_36
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_3
action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_7
action_10 (12) = happyShift action_8
action_10 (21) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (28) = happyShift action_11
action_10 (30) = happyShift action_12
action_10 (31) = happyShift action_13
action_10 (32) = happyShift action_14
action_10 (5) = happyGoto action_35
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_3
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_7
action_11 (12) = happyShift action_8
action_11 (21) = happyShift action_9
action_11 (26) = happyShift action_10
action_11 (28) = happyShift action_11
action_11 (30) = happyShift action_12
action_11 (31) = happyShift action_13
action_11 (32) = happyShift action_14
action_11 (5) = happyGoto action_34
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_33
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_30

action_14 (26) = happyShift action_32
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (34) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_20
action_16 (7) = happyShift action_3
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_5
action_16 (10) = happyShift action_6
action_16 (11) = happyShift action_7
action_16 (12) = happyShift action_8
action_16 (14) = happyShift action_21
action_16 (15) = happyShift action_22
action_16 (16) = happyShift action_23
action_16 (17) = happyShift action_24
action_16 (18) = happyShift action_25
action_16 (19) = happyShift action_26
action_16 (20) = happyShift action_27
action_16 (21) = happyShift action_9
action_16 (22) = happyShift action_28
action_16 (23) = happyShift action_29
action_16 (24) = happyShift action_30
action_16 (25) = happyShift action_31
action_16 (26) = happyShift action_10
action_16 (28) = happyShift action_11
action_16 (29) = happyReduce_5
action_16 (30) = happyShift action_12
action_16 (31) = happyShift action_13
action_16 (32) = happyShift action_14
action_16 (34) = happyReduce_5
action_16 (4) = happyGoto action_19
action_16 (5) = happyGoto action_16
action_16 _ = happyReduce_5

action_17 (6) = happyShift action_17
action_17 (7) = happyShift action_3
action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_5
action_17 (10) = happyShift action_6
action_17 (11) = happyShift action_7
action_17 (12) = happyShift action_8
action_17 (21) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (28) = happyShift action_11
action_17 (30) = happyShift action_12
action_17 (31) = happyShift action_13
action_17 (32) = happyShift action_14
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_16
action_17 _ = happyReduce_5

action_18 _ = happyReduce_2

action_19 _ = happyReduce_3

action_20 (6) = happyShift action_17
action_20 (7) = happyShift action_3
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_6
action_20 (11) = happyShift action_7
action_20 (12) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (28) = happyShift action_11
action_20 (30) = happyShift action_12
action_20 (31) = happyShift action_13
action_20 (32) = happyShift action_14
action_20 (4) = happyGoto action_60
action_20 (5) = happyGoto action_16
action_20 _ = happyReduce_5

action_21 (7) = happyShift action_3
action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (10) = happyShift action_6
action_21 (11) = happyShift action_7
action_21 (12) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (28) = happyShift action_11
action_21 (30) = happyShift action_12
action_21 (31) = happyShift action_13
action_21 (32) = happyShift action_14
action_21 (5) = happyGoto action_59
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_3
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (10) = happyShift action_6
action_22 (11) = happyShift action_7
action_22 (12) = happyShift action_8
action_22 (21) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (28) = happyShift action_11
action_22 (30) = happyShift action_12
action_22 (31) = happyShift action_13
action_22 (32) = happyShift action_14
action_22 (5) = happyGoto action_58
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_3
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (11) = happyShift action_7
action_23 (12) = happyShift action_8
action_23 (21) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (28) = happyShift action_11
action_23 (30) = happyShift action_12
action_23 (31) = happyShift action_13
action_23 (32) = happyShift action_14
action_23 (5) = happyGoto action_57
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_3
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (11) = happyShift action_7
action_24 (12) = happyShift action_8
action_24 (21) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (28) = happyShift action_11
action_24 (30) = happyShift action_12
action_24 (31) = happyShift action_13
action_24 (32) = happyShift action_14
action_24 (5) = happyGoto action_56
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_3
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (11) = happyShift action_7
action_25 (12) = happyShift action_8
action_25 (21) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (28) = happyShift action_11
action_25 (30) = happyShift action_12
action_25 (31) = happyShift action_13
action_25 (32) = happyShift action_14
action_25 (5) = happyGoto action_55
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_3
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (11) = happyShift action_7
action_26 (12) = happyShift action_8
action_26 (21) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (28) = happyShift action_11
action_26 (30) = happyShift action_12
action_26 (31) = happyShift action_13
action_26 (32) = happyShift action_14
action_26 (5) = happyGoto action_54
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_3
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (11) = happyShift action_7
action_27 (12) = happyShift action_8
action_27 (21) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (28) = happyShift action_11
action_27 (30) = happyShift action_12
action_27 (31) = happyShift action_13
action_27 (32) = happyShift action_14
action_27 (5) = happyGoto action_53
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_3
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_6
action_28 (11) = happyShift action_7
action_28 (12) = happyShift action_8
action_28 (21) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (28) = happyShift action_11
action_28 (30) = happyShift action_12
action_28 (31) = happyShift action_13
action_28 (32) = happyShift action_14
action_28 (5) = happyGoto action_52
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_3
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (11) = happyShift action_7
action_29 (12) = happyShift action_8
action_29 (21) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (28) = happyShift action_11
action_29 (30) = happyShift action_12
action_29 (31) = happyShift action_13
action_29 (32) = happyShift action_14
action_29 (5) = happyGoto action_51
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_3
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (10) = happyShift action_6
action_30 (11) = happyShift action_7
action_30 (12) = happyShift action_8
action_30 (21) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (28) = happyShift action_11
action_30 (30) = happyShift action_12
action_30 (31) = happyShift action_13
action_30 (32) = happyShift action_14
action_30 (5) = happyGoto action_50
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_3
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_6
action_31 (11) = happyShift action_7
action_31 (12) = happyShift action_8
action_31 (21) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (30) = happyShift action_12
action_31 (31) = happyShift action_13
action_31 (32) = happyShift action_14
action_31 (5) = happyGoto action_49
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_3
action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (11) = happyShift action_7
action_32 (12) = happyShift action_8
action_32 (21) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (30) = happyShift action_12
action_32 (31) = happyShift action_13
action_32 (32) = happyShift action_14
action_32 (5) = happyGoto action_48
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_3
action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (11) = happyShift action_7
action_33 (12) = happyShift action_8
action_33 (21) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (28) = happyShift action_11
action_33 (30) = happyShift action_12
action_33 (31) = happyShift action_13
action_33 (32) = happyShift action_14
action_33 (5) = happyGoto action_47
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_21
action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (18) = happyShift action_25
action_34 (19) = happyShift action_26
action_34 (20) = happyShift action_27
action_34 (22) = happyShift action_28
action_34 (23) = happyShift action_29
action_34 (24) = happyShift action_30
action_34 (25) = happyShift action_31
action_34 (29) = happyShift action_46
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (14) = happyShift action_21
action_35 (15) = happyShift action_22
action_35 (16) = happyShift action_23
action_35 (17) = happyShift action_24
action_35 (18) = happyShift action_25
action_35 (19) = happyShift action_26
action_35 (20) = happyShift action_27
action_35 (22) = happyShift action_28
action_35 (23) = happyShift action_29
action_35 (24) = happyShift action_30
action_35 (25) = happyShift action_31
action_35 (27) = happyShift action_45
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_17

action_37 (7) = happyShift action_3
action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (11) = happyShift action_7
action_37 (12) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (28) = happyShift action_11
action_37 (30) = happyShift action_12
action_37 (31) = happyShift action_13
action_37 (32) = happyShift action_14
action_37 (5) = happyGoto action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_42
action_38 (13) = happyShift action_43
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_21

action_40 (6) = happyShift action_17
action_40 (7) = happyShift action_3
action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_5
action_40 (10) = happyShift action_6
action_40 (11) = happyShift action_7
action_40 (12) = happyShift action_8
action_40 (21) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (30) = happyShift action_12
action_40 (31) = happyShift action_13
action_40 (32) = happyShift action_14
action_40 (4) = happyGoto action_41
action_40 (5) = happyGoto action_16
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_27

action_43 (7) = happyShift action_3
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (10) = happyShift action_6
action_43 (11) = happyShift action_7
action_43 (12) = happyShift action_8
action_43 (21) = happyShift action_9
action_43 (26) = happyShift action_10
action_43 (28) = happyShift action_11
action_43 (30) = happyShift action_12
action_43 (31) = happyShift action_13
action_43 (32) = happyShift action_14
action_43 (5) = happyGoto action_64
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_63
action_44 (14) = happyShift action_21
action_44 (15) = happyShift action_22
action_44 (16) = happyShift action_23
action_44 (17) = happyShift action_24
action_44 (18) = happyShift action_25
action_44 (19) = happyShift action_26
action_44 (20) = happyShift action_27
action_44 (22) = happyShift action_28
action_44 (23) = happyShift action_29
action_44 (24) = happyShift action_30
action_44 (25) = happyShift action_31
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_18

action_46 _ = happyReduce_19

action_47 (14) = happyShift action_21
action_47 (15) = happyShift action_22
action_47 (16) = happyShift action_23
action_47 (17) = happyShift action_24
action_47 (18) = happyShift action_25
action_47 (19) = happyShift action_26
action_47 (20) = happyShift action_27
action_47 (22) = happyShift action_28
action_47 (23) = happyShift action_29
action_47 (24) = happyShift action_30
action_47 (25) = happyShift action_31
action_47 (27) = happyShift action_62
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (14) = happyShift action_21
action_48 (15) = happyShift action_22
action_48 (16) = happyShift action_23
action_48 (17) = happyShift action_24
action_48 (18) = happyShift action_25
action_48 (19) = happyShift action_26
action_48 (20) = happyShift action_27
action_48 (22) = happyShift action_28
action_48 (23) = happyShift action_29
action_48 (24) = happyShift action_30
action_48 (25) = happyShift action_31
action_48 (27) = happyShift action_61
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (17) = happyShift action_24
action_49 (18) = happyShift action_25
action_49 (19) = happyShift action_26
action_49 (20) = happyShift action_27
action_49 _ = happyReduce_9

action_50 (17) = happyShift action_24
action_50 (18) = happyShift action_25
action_50 (19) = happyShift action_26
action_50 (20) = happyShift action_27
action_50 _ = happyReduce_8

action_51 (17) = happyShift action_24
action_51 (18) = happyShift action_25
action_51 (19) = happyShift action_26
action_51 (20) = happyShift action_27
action_51 (24) = happyShift action_30
action_51 (25) = happyShift action_31
action_51 _ = happyReduce_7

action_52 (17) = happyShift action_24
action_52 (18) = happyShift action_25
action_52 (19) = happyShift action_26
action_52 (20) = happyShift action_27
action_52 (24) = happyShift action_30
action_52 (25) = happyShift action_31
action_52 _ = happyReduce_6

action_53 _ = happyReduce_14

action_54 _ = happyReduce_13

action_55 _ = happyReduce_12

action_56 _ = happyReduce_11

action_57 (17) = happyShift action_24
action_57 (18) = happyShift action_25
action_57 (19) = happyShift action_26
action_57 (20) = happyShift action_27
action_57 (22) = happyShift action_28
action_57 (23) = happyShift action_29
action_57 (24) = happyShift action_30
action_57 (25) = happyShift action_31
action_57 _ = happyReduce_16

action_58 (17) = happyShift action_24
action_58 (18) = happyShift action_25
action_58 (19) = happyShift action_26
action_58 (20) = happyShift action_27
action_58 (22) = happyShift action_28
action_58 (23) = happyShift action_29
action_58 (24) = happyShift action_30
action_58 (25) = happyShift action_31
action_58 _ = happyReduce_15

action_59 (17) = happyShift action_24
action_59 (18) = happyShift action_25
action_59 (19) = happyShift action_26
action_59 (20) = happyShift action_27
action_59 (22) = happyShift action_28
action_59 (23) = happyShift action_29
action_59 (24) = happyShift action_30
action_59 (25) = happyShift action_31
action_59 _ = happyReduce_10

action_60 (29) = happyReduce_1
action_60 (34) = happyReduce_1
action_60 _ = happyReduce_1

action_61 (28) = happyShift action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_66
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_28

action_64 (6) = happyShift action_65
action_64 (14) = happyShift action_21
action_64 (15) = happyShift action_22
action_64 (16) = happyShift action_23
action_64 (17) = happyShift action_24
action_64 (18) = happyShift action_25
action_64 (19) = happyShift action_26
action_64 (20) = happyShift action_27
action_64 (22) = happyShift action_28
action_64 (23) = happyShift action_29
action_64 (24) = happyShift action_30
action_64 (25) = happyShift action_31
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_29

action_66 _ = happyReduce_25

action_67 (6) = happyShift action_17
action_67 (7) = happyShift action_3
action_67 (8) = happyShift action_4
action_67 (9) = happyShift action_5
action_67 (10) = happyShift action_6
action_67 (11) = happyShift action_7
action_67 (12) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (26) = happyShift action_10
action_67 (28) = happyShift action_11
action_67 (30) = happyShift action_12
action_67 (31) = happyShift action_13
action_67 (32) = happyShift action_14
action_67 (4) = happyGoto action_68
action_67 (5) = happyGoto action_16
action_67 _ = happyReduce_5

action_68 (29) = happyShift action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (33) = happyShift action_70
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (28) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_17
action_71 (7) = happyShift action_3
action_71 (8) = happyShift action_4
action_71 (9) = happyShift action_5
action_71 (10) = happyShift action_6
action_71 (11) = happyShift action_7
action_71 (12) = happyShift action_8
action_71 (21) = happyShift action_9
action_71 (26) = happyShift action_10
action_71 (28) = happyShift action_11
action_71 (30) = happyShift action_12
action_71 (31) = happyShift action_13
action_71 (32) = happyShift action_14
action_71 (4) = happyGoto action_72
action_71 (5) = happyGoto action_16
action_71 _ = happyReduce_5

action_72 (29) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_31

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
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
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_1)
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
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (IsMore happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OR (IsLess happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OR (IsMore happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (AND happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (OR happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (NOT happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (Int happy_var_1)
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  5 happyReduction_21
happyReduction_21 (HappyTerminal (TokenInt _ happy_var_2))
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Plus (Type (Int happy_var_1)) (Type (Int happy_var_2))
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (Bool happy_var_1)
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (Bool happy_var_1)
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (String happy_var_1)
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn5
		 (Lookup happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 _
	(HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Declare happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 5 5 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_1  5 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn5
		 (ReadLine
	)

happyReduce_31 = happyReduce 11 5 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (IfElse happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNewLine _ -> cont 6;
	TokenInt _ happy_dollar_dollar -> cont 7;
	TokenBool _ happy_dollar_dollar -> cont 8;
	TokenBool _ happy_dollar_dollar -> cont 9;
	TokenString _ happy_dollar_dollar -> cont 10;
	TokenVar _ -> cont 11;
	TokenName _ happy_dollar_dollar -> cont 12;
	TokenEq _ -> cont 13;
	TokenIsEq _ -> cont 14;
	TokenAND _ -> cont 15;
	TokenOR _ -> cont 16;
	TokenLess _ -> cont 17;
	TokenMore _ -> cont 18;
	TokenLessEq _ -> cont 19;
	TokenMoreEq _ -> cont 20;
	TokenNOT _ -> cont 21;
	TokenPlus _ -> cont 22;
	TokenMinus _ -> cont 23;
	TokenTimes _ -> cont 24;
	TokenDiv _ -> cont 25;
	TokenLParen _ -> cont 26;
	TokenRParen _ -> cont 27;
	TokenLCurly _ -> cont 28;
	TokenRCurly _ -> cont 29;
	TokenPrint _ -> cont 30;
	TokenReadLine _ -> cont 31;
	TokenIf _ -> cont 32;
	TokenElse _ -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
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

data Type = Bool Bool  | Int Int | String String | Empty
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
        | Print Exp
        | Lookup String
        | ReadLine
        | IfElse Exp [Exp] [Exp]
         deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































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
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
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
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
