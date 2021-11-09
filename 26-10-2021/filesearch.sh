#!/bin/bash 
#
#NAME: filesearch.sh
#SYNOPSIS: filesearch.sh file1 file2
#DESCRIPTION:
# Dieses Script vergleicht die Zeilen von 2 Files Zeile für Zeile.
# Wenn die Zeilen gleich sind werden diese in ein neues file merged.txt gespeichert.
#PARAMETER:
# file_1: Erstes file, für den Vergleich.
# file_2: Zweites file für den Vergleich.
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.2
#DATUM: 05.10.2021
# Name: filesearch.sh - Anzeige der Grösse sortiert ausgegeben 
# SYNOPSIS: filesearch.sh [OPTION] 
# Description: Gestaltet ein File um das es nur deutsche Texte, Hauptgruppen und zeigt nur noch die zwei Hauptspalten an.
# Parameter fuer sort: 
# 
# Autoren:
# Version: 1.0 
# Datum: 22.10.2021

# REGEX nimmt nur die Zahl 2 von Export Small zweiter teil printet nur die zwei gewünschten spalten aus und gibt mit length 7 die hauptgruppen aus. 
input=$1
output=$2

 awk '$1 ~ /^[0-2]$/ '  $input | \
 awk '$2 ~ /^[0-25]$/'             | \
 awk -F"'" '{print $2,"     ",$4}' | \
 awk 'length($1)==7' > $output
 
