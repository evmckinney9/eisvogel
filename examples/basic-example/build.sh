rm -f "document.pdf"
pandoc "document.md" -o "document.pdf" --from markdown --template "eisvogel.latex" --highlight-style tango
code "document.pdf"