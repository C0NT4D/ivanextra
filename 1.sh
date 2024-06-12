#!/bin/bash
lineas=`cat datos.txt | wc -l`
for i in $(seq 1 $lineas); do
linea=$(cat datos.txt | head -n$i | tail -n1)
ciudad=$(echo $linea | awk '{print $1}')
lluvia=$(echo $linea | awk '{print $3}')

  if [ $lluvia -gt 10 ]; then
      echo "En la ciudad $ciudad a llovido mucho" 
    else
      echo "En la ciudad $ciudad a llovido poco" 

    fi

done







