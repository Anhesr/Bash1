
mkdir pequeños
mkdir medianos
mkdir grandes

for x in $(find $1 -size "-$umbral1"c -type f) # peq
do
	cp	$x pequeños
done
;