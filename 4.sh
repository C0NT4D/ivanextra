#!/bin/bash


lineas=`cat datos.txt | wc -l`
todoOno=1

for i in `seq 1 $lineas`
do
linea=$(cat datos.txt | head -n$i | tail -n1)
ciudad=$(echo $linea | awk '{print $1}')
    lluvia=$(echo $linea | awk '{print $3}')
if [ $lluvia -eq 0 ]
then
todoOno=0

fi
done
if [ $todoOno -eq 1 ]
then
  echo "$ciudad "

fi
