
if [ -d copia_seg ];
then

	date=$(date +%s)
	for x in $(find  -type f -name $1)
	do
		creation=$(stat $x -c %x)
		time=$date-$creation
		if[] 
	done
	#tar -czf copia_seg/copia-$(whoami) -$date.tar.gz $*

else
	echo "No existe copia_seg , se creará"

	mkdir copia_seg

	date=$(date +%s)
	for x in $(find copia_seg -type f)
	do
		creation=$(stat $x -c %x)
		time=$date-$creation
		if[ time > 200]; 
	done
	#tar -czf copia_seg/copia -$(whoami) -$date.tar.gz $*


fi