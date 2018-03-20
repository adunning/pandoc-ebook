## Create e-books in multiple formats

# Variables

BOOKNAME = ebook

# Default targets

all: html epub

# `make help` displays all lines beginning with two hash signs

help : Makefile
	@sed -n 's/^##//p' $<

# Build targets

## html : Generate an HTML file.

html:
	pandoc $(BOOKNAME).md \
	-t html \
	-o $(BOOKNAME).html \
	--css="style.css" \
	--table-of-contents \
	--section-divs \
	--standalone

## epub : Generate an EPUB file.

epub:
	pandoc $(BOOKNAME).md \
	-t epub \
	-o $(BOOKNAME).epub \
	--epub-cover-image="images/cover.jpg" \
	--css="style-epub.css" \
	--standalone

## pdf  : Generate a PDF file.

pdf:
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
	--table-of-contents \
	--standalone

## docx : Generate a Word file.

docx:
	pandoc $(BOOKNAME).md \
	-o $(BOOKNAME).docx \
	--reference-doc=style.docx \
	--table-of-contents \
	--standalone

# Actions that do not correspond to files

.PHONY: help
