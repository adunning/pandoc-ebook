# pandoc-ebook

A sample script for joint print/HTML/EPUB production using [Pandoc](https://pandoc.org).

## Requirements

1. Make:
    - On the Mac, install Xcode from the App Store or run `xcode-select --install` on the Terminal.
    - On Windows, install [Git for Windows](https://gitforwindows.org) (providing a version of Bash) and the [Software Carpentry Windows Installer](https://github.com/swcarpentry/windows-installer/releases).
    - Alternatively, if you are on Windows 10 and are more technically oriented, install the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
2. Pandoc: see [Installing Pandoc](https://pandoc.org/installing.html) (most easily installed on the Mac using [Homebrew](https://brew.sh)).
3. LaTeX, if PDF production is desired (not enabled by default: to generate using Make, run `make pdf`).
