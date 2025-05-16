.PHONY: all
all: llm-sc.pdf

LATEXFLAGS+=	-shell-escape

llm-sc.pdf: llm-sc.tex llm-sc.bib didactic.sty
llm-sc.pdf: abstract.tex

llm-sc.tex: llm-sc.nw


.PHONY:
all: llm-sc

llm-sc.py: llm-sc.nw
llm-sc: llm-sc.py
	cp $^ $@
	chmod +x $@


.PHONY: clean
clean:
	${RM} llm-sc llm-sc.py llm-sc.pdf llm-sc.tex


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=./didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
