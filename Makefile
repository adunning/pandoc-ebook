## Create e-books in multiple formats

# Variables

BOOKNAME = ebook

# Default targets

## all   : Generate all supported document types (updated files only)

all: html epub pdf docx

## clean : Delete all generated files

clean: html_clean epub_clean pdf_clean docx_clean

# `make help` displays all lines beginning with two hash signs

help : Makefile
	@sed -n 's/^##//p' $<

# Build targets

## html  : Generate an HTML file.

html: $(BOOKNAME).html

html_clean:
	rm -f $(BOOKNAME).html

$(BOOKNAME).html: $(BOOKNAME).md style.css
	pandoc $(BOOKNAME).md \
	-t html \
	-o $(BOOKNAME).html \
	--css="style.css" \
	--table-of-contents \
	--section-divs \
	--standalone

## epub  : Generate an EPUB file.

epub: $(BOOKNAME).epub

epub_clean:
	rm -f $(BOOKNAME).epub

$(BOOKNAME).epub: $(BOOKNAME).md images/cover.jpg style-epub.css
	pandoc $(BOOKNAME).md \
	-t epub \
	-o $(BOOKNAME).epub \
	--epub-cover-image="images/cover.jpg" \
	--css="style-epub.css" \
	--standalone

## pdf   : Generate a PDF file.

pdf: $(BOOKNAME).pdf

pdf_clean:
	rm -f $(BOOKNAME).pdf

$(BOOKNAME).pdf: $(BOOKNAME).md 
	pandoc $(BOOKNAME).md \
	-o $(BOOKNAME).pdf \
	-V documentclass=scrbook \
	-V indent \
	-V subparagraph \
	-V fontfamily="libertine" \
	-V fontfamilyoptions="oldstyle,proportional" \
	-V papersize=a5 \
	--top-level-division=part \
	--pdf-engine=lualatex \
	--table-of-contents

## docx  : Generate a Word file.

docx: $(BOOKNAME).docx

docx_clean:
	rm -f $(BOOKNAME).docx

$(BOOKNAME).docx: $(BOOKNAME).md style.docx
	pandoc $(BOOKNAME).md \
	-o $(BOOKNAME).docx \
	--reference-doc=style.docx \
	--table-of-contents

# Actions that do not correspond to files

.PHONY: help html pdf docx epub html_clean pdf_clean docx_clean epub_clean
