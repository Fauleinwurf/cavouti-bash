#!/bin/bash 
#
#NAME: textprocessing.sh
#SYNOPSIS: textprocessing.sh 
#DESCRIPTION:
# Processes text
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.1
#DATUM: 09.11.2021

# Fehlermeldung entfernen
Cat dateiDieEsNichtGibt.txt 2> /dev/null

# Fügt files zusammen
cat list-1 list-2 list-3 | sort | uniq > final.list


sort testfile.txt| uniq -c | sort -nr

man $1 | head -n6 | tail -n1 | cut -b 8-
