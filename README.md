# eisvogel

## Setup
For more information, look at Installation notes from the original repo. I installed into Windows Subsystem for Linux (WSL) Ubuntu 20.04 LTS.

First, install LaTeX (if not already) and verify version:
```bash
sudo apt-get install texlive-latex-extra
tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref
pdflatex --version
```

Then, install pandoc and verify version:
```bash
wget https://github.com/jgm/pandoc/releases/download/2.19.2/pandoc-2.19.2-1-amd64.deb
sudo dpkg -i pandoc-2.19.2-1-amd64.deb
pandoc --version
```

Printing the version will give you the user data directory, for example:

`User data directory: /home/evm9/.local/share/pandoc`

Second, move the Eisvogel template to the pandoc templates directory:
```bash
cd /home/evm9/.local/share
mkdir -p pandoc/templates
cd pandoc/templates
wget https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.1.0/Eisvogel-2.1.0.tar.gz
tar -xzf Eisvogel-2.1.0.tar.gz
rm -r !("eisvogel.latex")
```
___
<!-- 
Spring '23 HW Assignments

#### INFSCI_2915/

#### PHYS_3770/
___ -->

Built using my fork of [Wandmalfarbe/pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template).

A clean **pandoc LaTeX template** to convert your markdown files to PDF or LaTeX. It is designed for lecture notes and exercises with a focus on computer science. The template is compatible with pandoc 2.
