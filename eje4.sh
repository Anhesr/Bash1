# -> who   awk

#wc -l test.txt | awk '{print $1}'

echo (who | awk '{print $1}' |sort |uniq )

#for x in $(find)
#do 
# echo "$(basename $x)"
#done |grep $c -o |wc -l