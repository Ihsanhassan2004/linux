if [ $# -ne 3 ] 
then 
echo "synatax is <$0> <$no> <$op> <$no1>"
exit 1
fi
case $2 in 
+) echo `expr $1 + $3 `;;
-) echo `expr $1 - $3`;;
x) echo `expr $1 "*" $3`;;
/) echo `expr $1 / $3`;;
%) echo `expr $1 % $3`;;
*) echo "inavlid operator";;
esac  
