function funcion(){
    name=$1;
    mkdir $name;
    date > ./$name/ganador.txt
}

funcion name

echo $1