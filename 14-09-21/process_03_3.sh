#!/bin/bash 
#
#NAME: process_03_3.sh - Gibt aus ob ein gesuchter Prozess läuft
#SYNOPSIS: process_03_3.sh
#DESCRIPTION: 
# Dieses Script gibt aus ob ein gesuchter Prozess gerade läuft.
# Dieser Prozess kann in der CommandLine als Input eingegeben werden.
#PARAMETER:
# Keine...
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.0
#DATUM: 14.09.2021
clear 
echo "------------------------------------------------"
echo "Geben Sie den Prozess ein den Sie suchen!" 
echo "------------------------------------------------" 
read input 

if [ `ps -ef | grep ${input} | grep -v grep | wc -l` -eq 0 ]; then 
        echo "" 
        echo " This process is curently not runnning." 
else 
        echo "This process is running hurray" 
fi 
