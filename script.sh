#!/bin/bash






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
