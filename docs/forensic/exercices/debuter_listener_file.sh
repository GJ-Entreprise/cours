#!/bin/bash

scripthelp() {
    echo "Usage: $0 [-h,-n]" >&2
    echo
    echo "   -h           print this help"
    echo "   -n XX        folder number"
    echo
    exit 1
}

startnetcat() {
    echo $(date)": un listener a été ouvert pour le dossier $number" >> log.txt
    $port=1235
    while true
    do
        nc -k -l localhost 1234 | while read line
        do
            echo $line >> ./$number/$filename
        done
        filename=$(nc -l $port)
        echo $filename
    done
}

$number
while getopts ':n:h' option; do
   case "$option" in
      h) scripthelp
         exit
         ;;
      n) number=$OPTARG
         [[ $number =~ '^[0-9]+$' ]] && scripthelp || folder
         startnetcat
         ;;
      *) scripthelp
         exit 1
         ;;
   esac
done


