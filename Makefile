# This Makefile was modified from Julian's provided code.
#
# Rules for compiling and linking the typechecker/evaluator
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#   

# Files that need to be generated from other files
DEPEND += SPLTokens.hs SPLGrammar.hs SPLEval.hs

# When "make" is invoked with no arguments, we build an executable after building everything that it depends on
all: $(DEPEND) myinterpreter

# Build an executable for interpreter
myinterpreter: $(DEPEND) Main.hs
	ghc -o myinterpreter Main.hs

# Generate ML files from a parser definition file
SPLGrammar.hs : SPLGrammar.y
	@rm -f SPLGrammar.hs
	happy SPLGrammar.y
	@chmod -w SPLGrammar.hs

# Generate ML files from a lexer definition file
SPLTokens.hs : SPLTokens.x
	@rm -f SPLTokens.hs
	alex SPLTokens.x
	@chmod -w SPLTokens.hs

# Clean up the directory
clean::
	rm -rf SPLTokens.hs SPLGrammar.hs *.hi *.o *.info myinterpreter
