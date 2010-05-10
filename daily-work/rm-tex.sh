#!/bin/bash
# Script to remove trash files created on latex compilation
# Deletes the trash files associated with the input file name
# If 'all' received as input, deletes the trash associated with 
# every file


if [ ! -z $1 ]; then
    if [ $1 == all ]; then
	rm *.toc *.log *.aux *.dvi *.lof *.lot *.out
    else
	rm $1.toc $1.log $1.aux $1.dvi $1.log $.lot $.out
    fi
else
    echo 'No input. Run ./rm-tex.sh <file-name / all>'
fi
