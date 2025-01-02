LATEX=pdflatex
MAIN_FILE=resume.tex
SECTION_DIR=sections
OUTPUT_DIR=build

SECTIONS=$(wildcard $(SECTION_DIR)/*.tex)
OUTPUT_PDF=$(OUTPUT_DIR)/resume.pdf

all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(MAIN_FILE) $(SECTIONS)
	mkdir -p $(OUTPUT_DIR)
	$(LATEX) -output-directory=$(OUTPUT_DIR) $(MAIN_FILE)

clean:
	rm -rf $(OUTPUT_DIR)

$(SECTION_DIR)/%.tex: $(SECTION_DIR)/%.tex
	$(LATEX) $(MAIN_FILE)

.PHONY: all clean
