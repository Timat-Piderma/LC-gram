## File generated by the BNF Converter (bnfc 2.9.5).

# Makefile for building the parser and test program.

GHC        = ghc
HAPPY      = happy
HAPPY_OPTS = --array --info --ghc --coerce
ALEX       = alex
ALEX_OPTS  = --ghc

# List of goals not corresponding to file names.

.PHONY : all clean distclean

# Default goal.

all : TestGram

# Rules for building the parser.

#AbsGram.hs LexGram.x ParGram.y PrintGram.hs TestGram.hs : gram.cf
#	bnfc --haskell gram.cf

%.hs : %.y
	${HAPPY} ${HAPPY_OPTS} $<

%.hs : %.x
	${ALEX} ${ALEX_OPTS} $<

TestGram : AbsGram.hs LexGram.hs ParGram.hs PrintGram.hs TestGram.hs
	${GHC} ${GHC_OPTS} $@

# Rules for cleaning generated files.

clean :
	-rm -f *.hi *.o *.log *.aux *.dvi

distclean : clean
	-rm -f AbsGram.hs AbsGram.hs.bak ComposOp.hs ComposOp.hs.bak DocGram.txt DocGram.txt.bak ErrM.hs ErrM.hs.bak LayoutGram.hs LayoutGram.hs.bak LexGram.x LexGram.x.bak ParGram.y ParGram.y.bak PrintGram.hs PrintGram.hs.bak SkelGram.hs SkelGram.hs.bak TestGram.hs TestGram.hs.bak XMLGram.hs XMLGram.hs.bak ASTGram.agda ASTGram.agda.bak ParserGram.agda ParserGram.agda.bak IOLib.agda IOLib.agda.bak Main.agda Main.agda.bak gram.dtd gram.dtd.bak TestGram LexGram.hs ParGram.hs ParGram.info ParDataGram.hs Makefile


# EOF
