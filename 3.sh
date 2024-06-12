
#!/bin/bash
media=0
cuantos=0
total=0
lineas=`cat datos.txt | wc -l`

for i in `seq 2 $lineas`
do
  linea=`cat datos.txt | head -n$i | tail -n1`
  temperatura=`echo $linea | awk '{print $2}'`
  ciudad=`echo $linea | awk '{print $1}'`
  
  if [ $ciudad = $1 ]
  then
    total=$((total+temperatura))
    cuantos=$((cuantos+1))
  fi
done

if [ $total -eq 0 ]
then
  echo "La ciudad no existe "
else
  media=$((total/cuantos))
  echo $media
fi
