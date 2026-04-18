if [ $# -ne 1 ]
then
echo "Syntax is $0 <number>"
exit 1
fi
n=$1
rev=0
c=0
while [ $n -ne  0 ]
do
digit=`expr $n % 10`
rev=`expr $rev \* 10 + $digit`
c=`expr $c + 1`
n=`expr $n / 10`
done
while [ $c -ne 0 ]
do
digit=`expr $rev % 10`
case $digit in
1) echo -n  "one " ;;
2) echo -n  "two " ;;
3) echo -n  "three " ;;
4) echo -n  "four " ;;
5) echo -n  "five " ;;
6) echo -n  "six " ;;
7) echo -n "seven " ;;
8) echo -n  "eight " ;;
9) echo  -n "nine " ;;
0) echo -n  "zero " ;;
esac
rev=`expr $rev / 10` 
c=`expr $c - 1`
done
