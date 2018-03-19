BOOKNAME = ebook

all: html epub

help:
	@echo ' '
	@echo 'E-book Generator'
	@echo ' '
	@echo 'Usage:'
	@echo '   make html                        generate an HTML file'
	@echo '   make epub                        generate an EPUB file'
	@echo '   make pdf                         generate a PDF file'
	@echo '   make docx                        generate a Word file'


html:
	pandoc $(BOOKNAME).md \
	-t html \
	-o $(BOOKNAME).html \
	--css="style.css" \
	--table-of-contents \
	--section-divs \
	--standalone

epub:
	pandoc $(BOOKNAME).md \
	-t epub \
	-o $(BOOKNAME).epub \
	--epub-cover-image="images/cover.jpg" \
	--css="style-epub.css" \
	--standalone

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

docx:
	pandoc $(BOOKNAME).md \
	-o $(BOOKNAME).docx \
	--reference-doc=style.docx \
	--table-of-contents \
	--standalone


.PHONY: help pdf docx html epub
