
echo "Nombre,longUsuario,FechaModif,FechaAcceso,Tamaño,Bloques,Permisos,Ejecutable"

for x in $(find $1 -size +$2c -type f)
do
		longUsuario=$(stat -c %u $x |wc -m );
		FechaModif=$(stat -c %y $x)
		FechaAcceso=$(stat -c %x $x)
		#Tamaño=$(stat -c%s $x)
		Permisos=$(stat -c %a $x)
		echo "$(basename $x),$longUsuario,$FechaModif,$FechaAcceso,$Permisos"
done