#!/bin/bash 
#
#NAME: filesearch.sh
#SYNOPSIS: filesearch.sh [OPTION] 
#DESCRIPTION:
# Gestaltet ein File um das es nur deutsche Texte, Hauptgruppen und zeigt nur noch die zwei Hauptspalten an.
#PARAMETER:
# keine
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.2
#DATUM: 26.10.2021
 
input=$1
output=$2

 awk '$1 ~ /^[0-2]$/ '  $input | \
 awk '$2 ~ /^[0-25]$/'             | \
 awk -F"'" '{print $2,"     ",$4}' | \
 awk 'length($1)==7' > $output
