#!/bin/sh
me=me 
client=${1%.yaml}
invoice=${2%.yaml}

pandoc $me $1 $2 -o $client-$invoice.pdf --template=template.tex --pdf-engine=xelatex
