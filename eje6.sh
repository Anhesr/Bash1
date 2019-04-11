#arg1=carpeta

function listar_archivos()
	echo "<ul>"
	for x int $(find $1 -maxdepth 1)
	do
		echo "<li><strong>$x</strong></li>"
	done


echo "<html>"
echo "<head>"
echo "<title><h3>Listado de directorios de $1<h3><title>"
echo "<head>"
echo "<body>"
listar-archivos $1
echo "<body>"