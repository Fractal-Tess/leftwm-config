#! /bin/sh


keyboard=$(setxkbmap -query | grep layout | awk '{print $2}')


if [ $keyboard == "us" ]; then
    setxkbmap bg phonetic
    echo "Current keyboard set to bg phonetic"
else 
    setxkbmap us
    echo "Current keyboard set to us"
fi