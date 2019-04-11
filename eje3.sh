mkdir pequeños
mkdir medianos
mkdir grandes

for x in $(find $1 -size -$2c -type f) # peq
do
	cp	$x pequeños
done


for x in $(find $1 -size +$2c -type f -o -size -$3c -type f) # peq
do
	cp	$x medianos
done

for x in $(find $1 -size +$3c -type f ) # peq
do
	cp	$x grandes
done