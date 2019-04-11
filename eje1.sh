


cant1=$(find $1 -name "*.c" | wc -l)
cant2=$(find $1 -name "*.h" | wc -l)

echo "tenemos $cant1 archivos .c y $cant2 archivos .c"

for x in $(find $1 -type f -name "*.c" -o -type f -name "*.h"  )
do
echo "el fichero $x tiene $(cat $x |wc -l) lineas y $(cat $x |wc -m) caracteres"
done | sort -nr -k 8
