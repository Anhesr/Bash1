date=$(date +%s)
for x in $(find copia_seg -type f)
do
	creation=$(stat $x -c %x)
	time=$date-$creation
	if[] 
done
tar -czf copia_seg/copia-$(whoami) -$date.tar.gz $*