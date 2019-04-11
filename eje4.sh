
echo "Archivos en el directorio actual : "
for x in $(find  -type f)
do 
 echo "$(basename $x)"
done |wc -l


wo=$(who | awk '{print $1}' |sort |uniq )

echo "Usuarios conectados : "
echo  $wo

echo "Introduzca el caracter a buscar :"
read c

echo "Archivos en el directorio actual con $c : "
for x in $(find  -type f)
do 
 echo "$(basename $x)"
done |grep $c -o -r |wc -l