{-# OPTIONS_GHC -w #-}
module SPLGrammar where 
import SPLTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (Exp)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,287) ([8000,5152,57351,33795,226,32513,15,0,0,0,0,0,0,0,1024,0,0,1,0,8223,1812,992,57988,31744,20608,28,0,2,0,0,0,2048,0,0,0,65274,14527,8000,5152,7,0,0,0,0,4000,35344,61443,16897,113,16446,3624,1984,50440,63489,41216,56,8223,1812,992,57988,31744,20608,32796,4111,906,496,28994,15872,10304,49166,2055,453,248,14497,7936,21536,7,31736,4,32512,47,0,0,61440,16897,32885,64,128,0,0,64000,41216,56,0,0,0,0,31744,20608,29,0,64,64516,61,3584,0,0,0,0,0,0,49152,3039,57344,0,0,32512,47,0,15,0,480,0,15360,6,32768,199,0,0,0,0,0,0,0,0,0,0,61184,1,57344,61,0,1980,0,0,0,0,128,0,32768,4096,0,0,2,0,64,0,1024,0,0,0,256,0,0,512,0,16384,57280,3,224,0,0,0,2,0,0,0,0,128,0,0,0,0,56,0,1792,0,57344,0,0,0,32,4000,35344,3,0,32770,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,16,0,4,250,14497,0,8192,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","ValList","Exp","nl","','","int","bool","string","var","varName","'='","'=='","and","or","'<'","'>'","'<='","'>='","not","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","print","readLine","if","else","%eof"]
        bit_start = st * 37
        bit_end = (st + 1) * 37
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..36]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_16
action_0 (9) = happyShift action_3
action_0 (10) = happyShift action_4
action_0 (11) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (13) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (27) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (33) = happyShift action_11
action_0 (34) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (6) = happyGoto action_15
action_0 _ = happyReduce_5

action_1 (9) = happyShift action_3
action_1 (10) = happyShift action_4
action_1 (11) = happyShift action_5
action_1 (12) = happyShift action_6
action_1 (13) = happyShift action_7
action_1 (22) = happyShift action_8
action_1 (27) = happyShift action_9
action_1 (29) = happyShift action_10
action_1 (33) = happyShift action_11
action_1 (34) = happyShift action_12
action_1 (35) = happyShift action_13
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_39
action_2 (15) = happyShift action_20
action_2 (16) = happyShift action_21
action_2 (17) = happyShift action_22
action_2 (18) = happyShift action_23
action_2 (19) = happyShift action_24
action_2 (20) = happyShift action_25
action_2 (21) = happyShift action_26
action_2 (23) = happyShift action_27
action_2 (24) = happyShift action_28
action_2 (25) = happyShift action_29
action_2 (26) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (9) = happyFail []
action_3 _ = happyReduce_27

action_4 _ = happyReduce_29

action_5 _ = happyReduce_30

action_6 (13) = happyShift action_37
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (14) = happyShift action_36
action_7 _ = happyReduce_33

action_8 (9) = happyShift action_3
action_8 (10) = happyShift action_4
action_8 (11) = happyShift action_5
action_8 (12) = happyShift action_6
action_8 (13) = happyShift action_7
action_8 (22) = happyShift action_8
action_8 (27) = happyShift action_9
action_8 (29) = happyShift action_10
action_8 (33) = happyShift action_11
action_8 (34) = happyShift action_12
action_8 (35) = happyShift action_13
action_8 (6) = happyGoto action_35
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_3
action_9 (10) = happyShift action_4
action_9 (11) = happyShift action_5
action_9 (12) = happyShift action_6
action_9 (13) = happyShift action_7
action_9 (22) = happyShift action_8
action_9 (27) = happyShift action_9
action_9 (29) = happyShift action_10
action_9 (33) = happyShift action_11
action_9 (34) = happyShift action_12
action_9 (35) = happyShift action_13
action_9 (6) = happyGoto action_34
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_3
action_10 (10) = happyShift action_4
action_10 (11) = happyShift action_5
action_10 (12) = happyShift action_6
action_10 (13) = happyShift action_7
action_10 (22) = happyShift action_8
action_10 (27) = happyShift action_9
action_10 (29) = happyShift action_10
action_10 (33) = happyShift action_11
action_10 (34) = happyShift action_12
action_10 (35) = happyShift action_13
action_10 (6) = happyGoto action_33
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (27) = happyShift action_32
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_40

action_13 (27) = happyShift action_31
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (37) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_19
action_15 (9) = happyShift action_3
action_15 (10) = happyShift action_4
action_15 (11) = happyShift action_5
action_15 (12) = happyShift action_6
action_15 (13) = happyShift action_7
action_15 (15) = happyShift action_20
action_15 (16) = happyShift action_21
action_15 (17) = happyShift action_22
action_15 (18) = happyShift action_23
action_15 (19) = happyShift action_24
action_15 (20) = happyShift action_25
action_15 (21) = happyShift action_26
action_15 (22) = happyShift action_8
action_15 (23) = happyShift action_27
action_15 (24) = happyShift action_28
action_15 (25) = happyShift action_29
action_15 (26) = happyShift action_30
action_15 (27) = happyShift action_9
action_15 (29) = happyShift action_10
action_15 (30) = happyReduce_5
action_15 (33) = happyShift action_11
action_15 (34) = happyShift action_12
action_15 (35) = happyShift action_13
action_15 (37) = happyReduce_5
action_15 (4) = happyGoto action_18
action_15 (6) = happyGoto action_15
action_15 _ = happyReduce_5

action_16 (7) = happyShift action_16
action_16 (9) = happyShift action_3
action_16 (10) = happyShift action_4
action_16 (11) = happyShift action_5
action_16 (12) = happyShift action_6
action_16 (13) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (27) = happyShift action_9
action_16 (29) = happyShift action_10
action_16 (33) = happyShift action_11
action_16 (34) = happyShift action_12
action_16 (35) = happyShift action_13
action_16 (4) = happyGoto action_17
action_16 (6) = happyGoto action_15
action_16 _ = happyReduce_5

action_17 _ = happyReduce_2

action_18 _ = happyReduce_3

action_19 (7) = happyShift action_16
action_19 (9) = happyShift action_3
action_19 (10) = happyShift action_4
action_19 (11) = happyShift action_5
action_19 (12) = happyShift action_6
action_19 (13) = happyShift action_7
action_19 (22) = happyShift action_8
action_19 (27) = happyShift action_9
action_19 (29) = happyShift action_10
action_19 (33) = happyShift action_11
action_19 (34) = happyShift action_12
action_19 (35) = happyShift action_13
action_19 (4) = happyGoto action_62
action_19 (6) = happyGoto action_15
action_19 _ = happyReduce_5

action_20 (9) = happyShift action_3
action_20 (10) = happyShift action_4
action_20 (11) = happyShift action_5
action_20 (12) = happyShift action_6
action_20 (13) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (27) = happyShift action_9
action_20 (29) = happyShift action_10
action_20 (33) = happyShift action_11
action_20 (34) = happyShift action_12
action_20 (35) = happyShift action_13
action_20 (6) = happyGoto action_61
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_3
action_21 (10) = happyShift action_4
action_21 (11) = happyShift action_5
action_21 (12) = happyShift action_6
action_21 (13) = happyShift action_7
action_21 (22) = happyShift action_8
action_21 (27) = happyShift action_9
action_21 (29) = happyShift action_10
action_21 (33) = happyShift action_11
action_21 (34) = happyShift action_12
action_21 (35) = happyShift action_13
action_21 (6) = happyGoto action_60
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_3
action_22 (10) = happyShift action_4
action_22 (11) = happyShift action_5
action_22 (12) = happyShift action_6
action_22 (13) = happyShift action_7
action_22 (22) = happyShift action_8
action_22 (27) = happyShift action_9
action_22 (29) = happyShift action_10
action_22 (33) = happyShift action_11
action_22 (34) = happyShift action_12
action_22 (35) = happyShift action_13
action_22 (6) = happyGoto action_59
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_3
action_23 (10) = happyShift action_4
action_23 (11) = happyShift action_5
action_23 (12) = happyShift action_6
action_23 (13) = happyShift action_7
action_23 (22) = happyShift action_8
action_23 (27) = happyShift action_9
action_23 (29) = happyShift action_10
action_23 (33) = happyShift action_11
action_23 (34) = happyShift action_12
action_23 (35) = happyShift action_13
action_23 (6) = happyGoto action_58
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_3
action_24 (10) = happyShift action_4
action_24 (11) = happyShift action_5
action_24 (12) = happyShift action_6
action_24 (13) = happyShift action_7
action_24 (22) = happyShift action_8
action_24 (27) = happyShift action_9
action_24 (29) = happyShift action_10
action_24 (33) = happyShift action_11
action_24 (34) = happyShift action_12
action_24 (35) = happyShift action_13
action_24 (6) = happyGoto action_57
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_3
action_25 (10) = happyShift action_4
action_25 (11) = happyShift action_5
action_25 (12) = happyShift action_6
action_25 (13) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (27) = happyShift action_9
action_25 (29) = happyShift action_10
action_25 (33) = happyShift action_11
action_25 (34) = happyShift action_12
action_25 (35) = happyShift action_13
action_25 (6) = happyGoto action_56
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_3
action_26 (10) = happyShift action_4
action_26 (11) = happyShift action_5
action_26 (12) = happyShift action_6
action_26 (13) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (27) = happyShift action_9
action_26 (29) = happyShift action_10
action_26 (33) = happyShift action_11
action_26 (34) = happyShift action_12
action_26 (35) = happyShift action_13
action_26 (6) = happyGoto action_55
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_3
action_27 (10) = happyShift action_4
action_27 (11) = happyShift action_5
action_27 (12) = happyShift action_6
action_27 (13) = happyShift action_7
action_27 (22) = happyShift action_8
action_27 (27) = happyShift action_9
action_27 (29) = happyShift action_10
action_27 (33) = happyShift action_11
action_27 (34) = happyShift action_12
action_27 (35) = happyShift action_13
action_27 (6) = happyGoto action_54
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (9) = happyShift action_3
action_28 (10) = happyShift action_4
action_28 (11) = happyShift action_5
action_28 (12) = happyShift action_6
action_28 (13) = happyShift action_7
action_28 (22) = happyShift action_8
action_28 (27) = happyShift action_9
action_28 (29) = happyShift action_10
action_28 (33) = happyShift action_11
action_28 (34) = happyShift action_12
action_28 (35) = happyShift action_13
action_28 (6) = happyGoto action_53
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (9) = happyShift action_3
action_29 (10) = happyShift action_4
action_29 (11) = happyShift action_5
action_29 (12) = happyShift action_6
action_29 (13) = happyShift action_7
action_29 (22) = happyShift action_8
action_29 (27) = happyShift action_9
action_29 (29) = happyShift action_10
action_29 (33) = happyShift action_11
action_29 (34) = happyShift action_12
action_29 (35) = happyShift action_13
action_29 (6) = happyGoto action_52
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (9) = happyShift action_3
action_30 (10) = happyShift action_4
action_30 (11) = happyShift action_5
action_30 (12) = happyShift action_6
action_30 (13) = happyShift action_7
action_30 (22) = happyShift action_8
action_30 (27) = happyShift action_9
action_30 (29) = happyShift action_10
action_30 (33) = happyShift action_11
action_30 (34) = happyShift action_12
action_30 (35) = happyShift action_13
action_30 (6) = happyGoto action_51
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_3
action_31 (10) = happyShift action_4
action_31 (11) = happyShift action_5
action_31 (12) = happyShift action_6
action_31 (13) = happyShift action_7
action_31 (22) = happyShift action_8
action_31 (27) = happyShift action_9
action_31 (29) = happyShift action_10
action_31 (33) = happyShift action_11
action_31 (34) = happyShift action_12
action_31 (35) = happyShift action_13
action_31 (6) = happyGoto action_50
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_3
action_32 (10) = happyShift action_4
action_32 (11) = happyShift action_5
action_32 (12) = happyShift action_6
action_32 (13) = happyShift action_7
action_32 (22) = happyShift action_8
action_32 (27) = happyShift action_9
action_32 (29) = happyShift action_10
action_32 (31) = happyShift action_49
action_32 (33) = happyShift action_11
action_32 (34) = happyShift action_12
action_32 (35) = happyShift action_13
action_32 (6) = happyGoto action_48
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_20
action_33 (16) = happyShift action_21
action_33 (17) = happyShift action_22
action_33 (18) = happyShift action_23
action_33 (19) = happyShift action_24
action_33 (20) = happyShift action_25
action_33 (21) = happyShift action_26
action_33 (23) = happyShift action_27
action_33 (24) = happyShift action_28
action_33 (25) = happyShift action_29
action_33 (26) = happyShift action_30
action_33 (30) = happyShift action_47
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_20
action_34 (16) = happyShift action_21
action_34 (17) = happyShift action_22
action_34 (18) = happyShift action_23
action_34 (19) = happyShift action_24
action_34 (20) = happyShift action_25
action_34 (21) = happyShift action_26
action_34 (23) = happyShift action_27
action_34 (24) = happyShift action_28
action_34 (25) = happyShift action_29
action_34 (26) = happyShift action_30
action_34 (28) = happyShift action_46
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_24

action_36 (9) = happyShift action_3
action_36 (10) = happyShift action_4
action_36 (11) = happyShift action_5
action_36 (12) = happyShift action_6
action_36 (13) = happyShift action_7
action_36 (22) = happyShift action_8
action_36 (27) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (31) = happyShift action_45
action_36 (33) = happyShift action_11
action_36 (34) = happyShift action_12
action_36 (35) = happyShift action_13
action_36 (6) = happyGoto action_44
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_41
action_37 (14) = happyShift action_42
action_37 (31) = happyShift action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_28

action_39 (7) = happyShift action_16
action_39 (9) = happyShift action_3
action_39 (10) = happyShift action_4
action_39 (11) = happyShift action_5
action_39 (12) = happyShift action_6
action_39 (13) = happyShift action_7
action_39 (22) = happyShift action_8
action_39 (27) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (33) = happyShift action_11
action_39 (34) = happyShift action_12
action_39 (35) = happyShift action_13
action_39 (4) = happyGoto action_40
action_39 (6) = happyGoto action_15
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_34

action_42 (9) = happyShift action_3
action_42 (10) = happyShift action_4
action_42 (11) = happyShift action_5
action_42 (12) = happyShift action_6
action_42 (13) = happyShift action_7
action_42 (22) = happyShift action_8
action_42 (27) = happyShift action_9
action_42 (29) = happyShift action_10
action_42 (31) = happyShift action_73
action_42 (33) = happyShift action_11
action_42 (34) = happyShift action_12
action_42 (35) = happyShift action_13
action_42 (6) = happyGoto action_72
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (32) = happyShift action_71
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_70
action_44 (15) = happyShift action_20
action_44 (16) = happyShift action_21
action_44 (17) = happyShift action_22
action_44 (18) = happyShift action_23
action_44 (19) = happyShift action_24
action_44 (20) = happyShift action_25
action_44 (21) = happyShift action_26
action_44 (23) = happyShift action_27
action_44 (24) = happyShift action_28
action_44 (25) = happyShift action_29
action_44 (26) = happyShift action_30
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (9) = happyShift action_65
action_45 (10) = happyShift action_66
action_45 (11) = happyShift action_67
action_45 (5) = happyGoto action_69
action_45 _ = happyReduce_12

action_46 _ = happyReduce_25

action_47 _ = happyReduce_26

action_48 (15) = happyShift action_20
action_48 (16) = happyShift action_21
action_48 (17) = happyShift action_22
action_48 (18) = happyShift action_23
action_48 (19) = happyShift action_24
action_48 (20) = happyShift action_25
action_48 (21) = happyShift action_26
action_48 (23) = happyShift action_27
action_48 (24) = happyShift action_28
action_48 (25) = happyShift action_29
action_48 (26) = happyShift action_30
action_48 (28) = happyShift action_68
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (9) = happyShift action_65
action_49 (10) = happyShift action_66
action_49 (11) = happyShift action_67
action_49 (5) = happyGoto action_64
action_49 _ = happyReduce_12

action_50 (15) = happyShift action_20
action_50 (16) = happyShift action_21
action_50 (17) = happyShift action_22
action_50 (18) = happyShift action_23
action_50 (19) = happyShift action_24
action_50 (20) = happyShift action_25
action_50 (21) = happyShift action_26
action_50 (23) = happyShift action_27
action_50 (24) = happyShift action_28
action_50 (25) = happyShift action_29
action_50 (26) = happyShift action_30
action_50 (28) = happyShift action_63
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_23
action_51 (19) = happyShift action_24
action_51 (20) = happyShift action_25
action_51 (21) = happyShift action_26
action_51 _ = happyReduce_16

action_52 (18) = happyShift action_23
action_52 (19) = happyShift action_24
action_52 (20) = happyShift action_25
action_52 (21) = happyShift action_26
action_52 _ = happyReduce_15

action_53 (18) = happyShift action_23
action_53 (19) = happyShift action_24
action_53 (20) = happyShift action_25
action_53 (21) = happyShift action_26
action_53 (25) = happyShift action_29
action_53 (26) = happyShift action_30
action_53 _ = happyReduce_14

action_54 (18) = happyShift action_23
action_54 (19) = happyShift action_24
action_54 (20) = happyShift action_25
action_54 (21) = happyShift action_26
action_54 (25) = happyShift action_29
action_54 (26) = happyShift action_30
action_54 _ = happyReduce_13

action_55 _ = happyReduce_21

action_56 _ = happyReduce_20

action_57 _ = happyReduce_19

action_58 _ = happyReduce_18

action_59 (18) = happyShift action_23
action_59 (19) = happyShift action_24
action_59 (20) = happyShift action_25
action_59 (21) = happyShift action_26
action_59 (23) = happyShift action_27
action_59 (24) = happyShift action_28
action_59 (25) = happyShift action_29
action_59 (26) = happyShift action_30
action_59 _ = happyReduce_23

action_60 (18) = happyShift action_23
action_60 (19) = happyShift action_24
action_60 (20) = happyShift action_25
action_60 (21) = happyShift action_26
action_60 (23) = happyShift action_27
action_60 (24) = happyShift action_28
action_60 (25) = happyShift action_29
action_60 (26) = happyShift action_30
action_60 _ = happyReduce_22

action_61 (18) = happyShift action_23
action_61 (19) = happyShift action_24
action_61 (20) = happyShift action_25
action_61 (21) = happyShift action_26
action_61 (23) = happyShift action_27
action_61 (24) = happyShift action_28
action_61 (25) = happyShift action_29
action_61 (26) = happyShift action_30
action_61 _ = happyReduce_17

action_62 (30) = happyReduce_1
action_62 (37) = happyReduce_1
action_62 _ = happyReduce_1

action_63 (29) = happyShift action_83
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (32) = happyShift action_82
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (8) = happyShift action_81
action_65 _ = happyReduce_9

action_66 (8) = happyShift action_80
action_66 _ = happyReduce_11

action_67 (8) = happyShift action_79
action_67 _ = happyReduce_10

action_68 (7) = happyShift action_78
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (32) = happyShift action_77
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_37

action_71 (7) = happyShift action_76
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (7) = happyShift action_75
action_72 (15) = happyShift action_20
action_72 (16) = happyShift action_21
action_72 (17) = happyShift action_22
action_72 (18) = happyShift action_23
action_72 (19) = happyShift action_24
action_72 (20) = happyShift action_25
action_72 (21) = happyShift action_26
action_72 (23) = happyShift action_27
action_72 (24) = happyShift action_28
action_72 (25) = happyShift action_29
action_72 (26) = happyShift action_30
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (9) = happyShift action_65
action_73 (10) = happyShift action_66
action_73 (11) = happyShift action_67
action_73 (5) = happyGoto action_74
action_73 _ = happyReduce_12

action_74 (32) = happyShift action_90
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_39

action_76 _ = happyReduce_35

action_77 (7) = happyShift action_89
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_31

action_79 (9) = happyShift action_65
action_79 (10) = happyShift action_66
action_79 (11) = happyShift action_67
action_79 (5) = happyGoto action_88
action_79 _ = happyReduce_12

action_80 (9) = happyShift action_65
action_80 (10) = happyShift action_66
action_80 (11) = happyShift action_67
action_80 (5) = happyGoto action_87
action_80 _ = happyReduce_12

action_81 (9) = happyShift action_65
action_81 (10) = happyShift action_66
action_81 (11) = happyShift action_67
action_81 (5) = happyGoto action_86
action_81 _ = happyReduce_12

action_82 (28) = happyShift action_85
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (7) = happyShift action_16
action_83 (9) = happyShift action_3
action_83 (10) = happyShift action_4
action_83 (11) = happyShift action_5
action_83 (12) = happyShift action_6
action_83 (13) = happyShift action_7
action_83 (22) = happyShift action_8
action_83 (27) = happyShift action_9
action_83 (29) = happyShift action_10
action_83 (33) = happyShift action_11
action_83 (34) = happyShift action_12
action_83 (35) = happyShift action_13
action_83 (4) = happyGoto action_84
action_83 (6) = happyGoto action_15
action_83 _ = happyReduce_5

action_84 (30) = happyShift action_93
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (7) = happyShift action_92
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_6

action_87 _ = happyReduce_8

action_88 _ = happyReduce_7

action_89 _ = happyReduce_38

action_90 (7) = happyShift action_91
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_36

action_92 _ = happyReduce_32

action_93 (36) = happyShift action_94
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (29) = happyShift action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (7) = happyShift action_16
action_95 (9) = happyShift action_3
action_95 (10) = happyShift action_4
action_95 (11) = happyShift action_5
action_95 (12) = happyShift action_6
action_95 (13) = happyShift action_7
action_95 (22) = happyShift action_8
action_95 (27) = happyShift action_9
action_95 (29) = happyShift action_10
action_95 (33) = happyShift action_11
action_95 (34) = happyShift action_12
action_95 (35) = happyShift action_13
action_95 (4) = happyGoto action_96
action_95 (6) = happyGoto action_15
action_95 _ = happyReduce_5

action_96 (30) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_41

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

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (IsMore happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsLess happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR (IsMore happy_var_1 happy_var_3) (IsEq happy_var_1 happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AND happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (OR happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (NOT happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Int happy_var_1)
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  6 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt _ happy_var_2))
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Plus (Type (Int happy_var_1)) (Type (Int happy_var_2))
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  6 happyReduction_29
happyReduction_29 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (Bool happy_var_1)
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn6
		 (Type (String happy_var_1)
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happyReduce 5 6 happyReduction_31
happyReduction_31 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 7 6 happyReduction_32
happyReduction_32 (_ `HappyStk`
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

happyReduce_33 = happySpecReduce_1  6 happyReduction_33
happyReduction_33 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn6
		 (Lookup happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 _
	(HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (Declare happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 5 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Declare happy_var_2
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 7 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
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

happyReduce_37 = happyReduce 4 6 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 6 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Assign happy_var_1 (Type (Arr happy_var_4))
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 5 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_1  6 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn6
		 (ReadLine
	)

happyReduce_41 = happyReduce 11 6 happyReduction_41
happyReduction_41 (_ `HappyStk`
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

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNewLine _ -> cont 7;
	TokenComma _ -> cont 8;
	TokenInt _ happy_dollar_dollar -> cont 9;
	TokenBool _ happy_dollar_dollar -> cont 10;
	TokenString _ happy_dollar_dollar -> cont 11;
	TokenVar _ -> cont 12;
	TokenName _ happy_dollar_dollar -> cont 13;
	TokenEq _ -> cont 14;
	TokenIsEq _ -> cont 15;
	TokenAND _ -> cont 16;
	TokenOR _ -> cont 17;
	TokenLess _ -> cont 18;
	TokenMore _ -> cont 19;
	TokenLessEq _ -> cont 20;
	TokenMoreEq _ -> cont 21;
	TokenNOT _ -> cont 22;
	TokenPlus _ -> cont 23;
	TokenMinus _ -> cont 24;
	TokenTimes _ -> cont 25;
	TokenDiv _ -> cont 26;
	TokenLParen _ -> cont 27;
	TokenRParen _ -> cont 28;
	TokenLCurly _ -> cont 29;
	TokenRCurly _ -> cont 30;
	TokenLStraight _ -> cont 31;
	TokenRStraight _ -> cont 32;
	TokenPrint _ -> cont 33;
	TokenReadLine _ -> cont 34;
	TokenIf _ -> cont 35;
	TokenElse _ -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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

data Type = Bool Bool  | Int Int | String String | Arr [Type] | Empty
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
        | Lookup String
        
        | Print Exp
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
