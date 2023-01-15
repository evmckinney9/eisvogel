# eisvogel

## Setup
For more information, look at Installation notes from the original repo. I installed into Windows Subsystem for Linux (WSL) Ubuntu 20.04, 22.04.1 LTS.

#### First, install LaTeX (if not already) and verify version:

Start with TeX Live (https://tug.org/texlive/quickinstall.html). I am using the basic scheme because we will add the specific packages we want to use manually.
```bash
cd /tmp
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=minimal
echo 'export PATH="/usr/local/texlive/2022/bin/x86_64-linux:$PATH"' >> ~/.bashrc
```

#### XXX: I am not sure exactly why still but I had a really hard time debugging why the `tlmgr` command is not visible to superuser.
I spent time making sure I was setting PATH variable everywhere correctly. The work around is to use full path to tlmgr when in sudo.
```bash
$ tlmgr --version
tlmgr revision 63068 (2022-04-18 07:58:07 +0200)
tlmgr using installation: /usr/local/texlive/2022
TeX Live (https://tug.org/texlive) version 2022
$ sudo tlmgr --version
sudo: tlmgr: command not found
$ sudo /usr/local/texlive/2022/bin/x86_64-linux/tlmgr --version
tlmgr revision 63068 (2022-04-18 07:58:07 +0200)
tlmgr using installation: /usr/local/texlive/2022
TeX Live (https://tug.org/texlive) version 2022
```
I tried modifiying `/etc/environment`, `~/.bashrc`, and `~/.profile` but texlive was never recognized by e.g. `sudo printenv | grep texlive`

#### Next, use tlmgr (https://www.tug.org/texlive/tlmgr.html) to update packages.
```bash
tlmgr init-usertree
tlmgr update --self
tlmgr update --all
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

#### Second, move the Eisvogel template to the pandoc templates directory:
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
