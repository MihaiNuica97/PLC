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
happyExpList = Happy_Data_Array.listArray (0,60) ([4032,63498,33089,0,61440,1024,0,0,0,0,0,8,512,16128,40,256,2,8064,61460,643,12032,4032,10,2,0,2016,64517,32928,5151,33776,2,0,0,12288,0,57350,1287,0,0,0,376,3840,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exps","Exp","nl","int","true","false","string","var","varName","'='","'+'","'-'","'*'","'/'","'('","')'","print","%eof"]
        bit_start = st * 21
        bit_end = (st + 1) * 21
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..20]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_4

action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (9) = happyShift action_6
action_1 (10) = happyShift action_7
action_1 (11) = happyShift action_8
action_1 (12) = happyShift action_9
action_1 (18) = happyShift action_10
action_1 (20) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_13
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (14) = happyShift action_19
action_3 (15) = happyShift action_20
action_3 (16) = happyShift action_21
action_3 (17) = happyShift action_22
action_3 _ = happyReduce_3

action_4 (7) = happyShift action_18
action_4 _ = happyReduce_10

action_5 _ = happyReduce_12

action_6 _ = happyReduce_13

action_7 _ = happyReduce_14

action_8 (12) = happyShift action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (13) = happyShift action_16
action_9 _ = happyReduce_16

action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (20) = happyShift action_11
action_10 (5) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (18) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_13
action_12 (21) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (11) = happyShift action_8
action_13 (12) = happyShift action_9
action_13 (18) = happyShift action_10
action_13 (20) = happyShift action_11
action_13 (5) = happyGoto action_31
action_13 _ = happyReduce_2

action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (9) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (12) = happyShift action_9
action_14 (18) = happyShift action_10
action_14 (20) = happyShift action_11
action_14 (5) = happyGoto action_30
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (14) = happyShift action_19
action_15 (15) = happyShift action_20
action_15 (16) = happyShift action_21
action_15 (17) = happyShift action_22
action_15 (19) = happyShift action_29
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (9) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_8
action_16 (12) = happyShift action_9
action_16 (18) = happyShift action_10
action_16 (20) = happyShift action_11
action_16 (5) = happyGoto action_28
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_27
action_17 _ = happyReduce_17

action_18 _ = happyReduce_11

action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (11) = happyShift action_8
action_19 (12) = happyShift action_9
action_19 (18) = happyShift action_10
action_19 (20) = happyShift action_11
action_19 (5) = happyGoto action_26
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (11) = happyShift action_8
action_20 (12) = happyShift action_9
action_20 (18) = happyShift action_10
action_20 (20) = happyShift action_11
action_20 (5) = happyGoto action_25
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (11) = happyShift action_8
action_21 (12) = happyShift action_9
action_21 (18) = happyShift action_10
action_21 (20) = happyShift action_11
action_21 (5) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (18) = happyShift action_10
action_22 (20) = happyShift action_11
action_22 (5) = happyGoto action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_8

action_24 _ = happyReduce_7

action_25 (16) = happyShift action_21
action_25 (17) = happyShift action_22
action_25 _ = happyReduce_6

action_26 (16) = happyShift action_21
action_26 (17) = happyShift action_22
action_26 _ = happyReduce_5

action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (11) = happyShift action_8
action_27 (12) = happyShift action_9
action_27 (18) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (5) = happyGoto action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_19
action_28 (15) = happyShift action_20
action_28 (16) = happyShift action_21
action_28 (17) = happyShift action_22
action_28 _ = happyReduce_18

action_29 _ = happyReduce_9

action_30 (14) = happyShift action_19
action_30 (15) = happyShift action_20
action_30 (16) = happyShift action_21
action_30 (17) = happyShift action_22
action_30 (19) = happyShift action_32
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_19
action_31 (15) = happyShift action_20
action_31 (16) = happyShift action_21
action_31 (17) = happyShift action_22
action_31 _ = happyReduce_1

action_32 _ = happyReduce_15

action_33 (14) = happyShift action_19
action_33 (15) = happyShift action_20
action_33 (16) = happyShift action_21
action_33 (17) = happyShift action_22
action_33 _ = happyReduce_19

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_3 : happy_var_1
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_0  4 happyReduction_4
happyReduction_4  =  HappyAbsSyn4
		 ([]
	)

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type(Int happy_var_1)
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenInt _ happy_var_2))
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Plus (Type (Int happy_var_1)) (Type (Int happy_var_2))
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (Bool happy_var_1)
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (Bool happy_var_1)
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyTerminal (TokenString _ happy_var_1))
	 =  HappyAbsSyn5
		 (Type (String happy_var_1)
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 5 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Print happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn5
		 (Lookup happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyTerminal (TokenName _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (Declare happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenName _ happy_var_1))
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 5 happyReduction_19
happyReduction_19 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenName _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (DeclareWithVal happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 21 21 notHappyAtAll (HappyState action) sts stk []

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
	TokenPlus _ -> cont 14;
	TokenMinus _ -> cont 15;
	TokenTimes _ -> cont 16;
	TokenDiv _ -> cont 17;
	TokenLParen _ -> cont 18;
	TokenRParen _ -> cont 19;
	TokenPrint _ -> cont 20;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 21 tk tks = happyError' (tks, explist)
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



data Exp = Let String Exp Exp 
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | Expo Exp Exp
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Print Exp
        | Type Type
        | Lookup String
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
