#!/bin/bash
#
#NAME: zahlenraten.sh - Erraten einer Zahl von 1-20
#SYNOPSIS: zahlenraten.sh
#DESCRIPTION:
# In dieser Script muss man solange eine Zahl eingeben bis man eine von 1-20 errät.
#PARAMETER:
# Keine.
#
#AUTOREN: @NINO.NUFRIO
#VERSION: 1.0.0
#DATUM: 05.10.2021

rand=$[$RANDOM %20];
while : ; do
  echo "Guess a number between 1-20: "
    read -r input;
    echo "";
    if [ "$input" -lt "$rand" ]; then
        echo "$input is smaller than the Random number";
    elif [ "$input" -gt "$rand" ]; then
        echo "$input is taller than the Random number";

    fi;
    [[ "$input" != "$rand" ]] || break
done;
echo "You guessed it";

# Damit sich die geöffnete Konsole in Windows nicht direkt schliesst
read;
