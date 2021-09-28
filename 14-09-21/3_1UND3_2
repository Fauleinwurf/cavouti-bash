#!/bin/bash
#
#NAME: du_sort_03_2_1.sh - Anzeige aller Dateien der Grösse nach
#SYNOPSIS: du_sort_03_2_1.sh [option]
#DESCRIPTION: 
# Dieses Script gibt alle Dateien aus dem Verzeichnis wo es ausgeführt wird sortiert nach der Grösse, von gross nach klein aus.
#PARAMETER:
# -hr: Die Ausgabe wird Numerisch von gross nach klein sortiert.
# -df: Die Ausgabe wird von [A-Z] sortiert.
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.0
#DATUM: 14.09.2021
#
#Ausgabe der Grösse aller Dateien und Verzeichnisse

if [ -n "$1" ]; then
  du -a -h | sort $1
  echo "Der totale Speicherbedarf beträgt: " $(du -sh) Bytes
else
  exit 0
fi
