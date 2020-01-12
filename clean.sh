#!/bin/sh

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol\
  lot out toc xmpi run.xml xmpdata bcf synctex.gz\
  fdb_latexmk fls acn syo xdy opo mtc* maf auxlock"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
    done
fi
