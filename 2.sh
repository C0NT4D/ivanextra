#!/bin/bash
lineas=`cat datos.txt | wc -l`
totalTemperatura=0

for i in $(seq 1 $lineas); do
linea=$(cat datos.txt | head -n$i | tail -n1)
temperatura=`echo $linea | awk '{print $2}'`  
if [ $temperatura -gt 20 ]; then
    totalTemperatura=$((totalTemperatura + 1))
    fi
    done
    echo "Num dias con temperatura mayor a 20: $totalTemperatura"



