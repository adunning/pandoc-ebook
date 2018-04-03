# pandoc-ebook

A sample script for joint HTML/EPUB/DOCX/PDF production from a single Markdown source file using [Pandoc](https://pandoc.org). Created for [The Future of the Book](https://github.com/adunning/future-of-the-book) course in the [University of Toronto Faculty of Information](https://ischool.utoronto.ca).

## Usage

Open a terminal in the directory and run the command `make`. For a list of available commands, run `make help`.

[Sustainable Authorship in Plain Text using Pandoc and Markdown](https://programminghistorian.org/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown) is a general introduction to Pandoc. [Creating an e-book with Pandoc](https://pandoc.org/epub.html) explains the basics of EPUB generation.

For an introduction to Make, see [Software Carpentry: Automation and Make](https://swcarpentry.github.io/make-novice/).

## Requirements

1. [Make](https://gnu.org/software/make/):
    - On the Mac, install [Xcode](https://itunes.apple.com/app/xcode/id497799835) from the App Store or run `xcode-select --install` in the Terminal.
    - On Windows, install [Git for Windows](https://gitforwindows.org) (providing a version of Bash) and the [Software Carpentry Windows Installer](https://github.com/swcarpentry/windows-installer/releases). Alternatively, on Windows 10, install the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

2. Pandoc: see [Installing Pandoc](https://pandoc.org/installing.html).

3. If you need PDF production, install [TeX Live](https://tug.org/texlive/) or another LaTeX distribution (not enabled by default: to generate using Make, run `make pdf`). (Note that there are [other methods of creating PDFs through Pandoc](https://pandoc.org/MANUAL.html#creating-a-pdf).)

You can most easily install Pandoc and LaTeX on the Mac by [installing Homebrew](https://brew.sh), then pasting the following into the Terminal (be warned that MacTeX is a large installation):

```shell
brew install pandoc
brew tap caskroom/cask
brew cask install mactex
```

You can also generate e-books in Kindle format by [combinining Pandoc with KindleGen](https://puppet.com/blog/how-we-automated-our-ebook-builds-pandoc-and-kindlegen). To install with [Homebrew Cask](https://caskroom.github.io), run `brew cask install kindlegen`.

# Contributors

- [Andrew Dunning](https://andrewdunning.ca/)
- [Andy Berdan](http://berdan.ca/)
