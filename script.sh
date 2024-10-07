#!/bin/bash

name=$1
echo "Tu argumento de entrada es:"
echo $name

function funcion(){
    name=$1;
    mkdir $name;
    date > ./$name/ganador.txt
}

funcion $name

function check_winner(){
    nombre_carperta=$1
    minutes=$(date +"%M")

    if [ $((minutes % 2)) -eq 0 ]; then
        echo "Has ganado!!"
        echo "Has ganado!!" >> ./$nombre_carperta/ganador.txt
    else
        echo "Has perdido!!"
        echo "Has perdido!!" >> ./$nombre_carperta/ganador.txt
    fi
}

check_winner $name
