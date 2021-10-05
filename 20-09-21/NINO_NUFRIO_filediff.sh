#!/bin/bash
#
#NAME: NINO_NUFRIO_filediff.sh - A
#SYNOPSIS: NINO_NUFRIO_filediff.sh file1 file2
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

echo "Files:";
echo "File 1: $1";
echo "File 2: $2";
echo "====================================";

# Clear merged.txt
echo "Merged:" > merged.txt

# Prüfen ob Parameter gesetzt wurden
if [[ -f "$1" && -f "$2" ]]; then
  # Prüfen welches file grösser ist
  if [[ $(wc -l < "$1") -gt $(wc -l < "$2") ]];
  then
    file1=$1
    file2=$2
  else
    file1=$2
    file2=$1
  fi

  differentRowCount=0
  file1Rows=$(("$(wc -l < "$file1")"+1))

  # Loop durch alle Zeilen des Files
  i=1;
  while [[ $i -le $file1Rows ]]
  do
    nextRowFile1=$(sed -n ${i}p "$file1")
    nextRowFile2=$(sed -n ${i}p "$file2")

    echo "===================================="
    echo "Vergleich: "
    echo "Zeile $i: $nextRowFile1"
    echo "Zeile $i: $nextRowFile2"
    echo ""

    #Prüfen ob Zeilen ungleich sind
    if [[ "$nextRowFile1" != "$nextRowFile2" ]];
    then
      ((differentRowCount=differentRowCount+1))
      echo "Zeile nicht gleich"
    else
      echo "$nextRowFile1" >> merged.txt
      echo "Zeilen gleich"
    fi
    ((i=i+1))
  echo "===================================="

  done
  echo ""
  echo "Es sind $differentRowCount Zeilen ungleich!"

else
  echo "!!Ungültige Dokumentangabe!!"
  echo "Richtiger aufruf: NINO_NUFRIO_filediff.sh file1 file2"
fi

# Damit sich die geöffnete Konsole in Windows nicht direkt schliesst
read;