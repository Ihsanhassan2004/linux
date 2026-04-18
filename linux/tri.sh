#triangle
if [ $# -ne 3 ]  
then
echo "syntax is $0 <number1> <number2> <number3>"
exit 1
fi
s1=$1
s2=$2
s3=$3
if [ $s1 -gt $s2 ]
then
temp=$s1
s1=$s2
s2=$temp
fi
if [ $s2 -gt $s3 ]
then
temp=$s2
s2=$s3
s3=$temp
fi
if [ `expr $s1 + $s2` -gt $s3 ]
then
echo "triangle can be formed"
else
echo "triangle cant be formed"
exit 0
fi
if [ $s1 -eq $s2 -a $s2 -eq $s3 ]
then
echo "triamgle is  equlatreal"
elif [ $((s1*s1 + s2*s2)) -eq $((s3*s3)) ]
then
echo "triangle is right angled"
elif [ $s1 -eq $s2 -o $s1 -eq $s3 -o $s2 -eq $s3 ]
then
echo "triangle is isolated"
else 
echo "normal triangle"
fi
exit 0
