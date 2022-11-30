##Registros del péptido 
tail -n +2 ../data/grampa.csv | cut -d "," -f 4 | uniq -c | sort > ../data/amp.txt
##Péptido con dominio wgs

 Oda=`tail -n +2 ../data/grampa.csv | cut -d "," -f 4 | grep WGS | uniq | sort`
for x in $Oda
do
 longitud=`echo ${#x}`
 echo "Longitud:" $longitud "Péptido" $x
done > ../data/wgs.csv
