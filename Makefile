LATEX_SRC = resume.tex
PDF_OUTPUT = resume.pdf

LATEX = pdflatex

all: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(LATEX_SRC)
	$(LATEX) $(LATEX_SRC)

clean:
	rm -f $(basename $(LATEX_SRC)).aux $(basename $(LATEX_SRC)).bbl \
	    $(basename $(LATEX_SRC)).blg $(basename $(LATEX_SRC)).log \
	    $(basename $(LATEX_SRC)).out $(basename $(LATEX_SRC)).toc

clean-all: clean
	rm -f $(PDF_OUTPUT)
