pr1 : 

Take two sequences [a1 a2 a3 a4 a5..., b1 b2 b3 b4 ...] as an input and output the sequence [a1 a2 b1 a3 a4 b2...] which alternates between input sequences but reads twice from input one for every read from input two.


pr2 :

Take three sequences [a1 a2 a3... b1 b2 b3... c1 c2 c3...] as inputs and output the following sequence : [c1 b1 a1 (a1 + b1) (b1 + c1) c2 b2 a2 (a2 + b2) (b2 + c2)...]

pr3 : 
Take two sequences [a1 a2 a3 a4..., b1 b2 b3 b4...] 
and produce the sequence [0 b2 a1 b4 a2 b6 a3 b8...]
That is a shuffle of the first input stream prefixed by a fixed value 0, and the second input stream where every other value is skipped over.

pr4 :
Take a sequence [a1 a2 a3 a4 a5 a6...] and produce the sequence
[a3 (2 ∗ a2) (3 ∗ a1 − 1) a6 (2 ∗ a5) (3 ∗ a4 − 1)...] 

That is at least three values are taken from the single input sequence, the third of these is output
first, the second is doubled and then output, finally the first value is trebled, decremented and
output. This sequence repeats.
