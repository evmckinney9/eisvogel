rm -f "document.pdf"
pandoc "document.md" -o "document.pdf" --from markdown --template "../../eisvogel.tex" --highlight-style tango