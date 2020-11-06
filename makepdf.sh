#! /bin/bash
filename=$(basename $2)
filename="${filename%.*}"

if ! command -v latexmk &> /dev/null
then
    pdflatex $2
    makeglossaries "$filename"
    makeindex "$filename"
    pdflatex $2
    bibtex "$filename"
    makeglossaries "$filename"
    makeindex "$filename"
    pdflatex -interaction=$1 $2
    bibtex "$filename"
    pdflatex -interaction=$1 $2
    pdflatex -interaction=$1 $2
else
    latexmk -pdf -interaction=$1 $2
fi