if [ $# -gt 1 ]
then
echo " Syntax <$0> year"
exit 1
fi
if [ $# -ne 1 ]
then
yr=`date +%Y`
else
yr=$1
fi
if [ $((yr % 4)) -eq 0 -a $((yr % 100)) -ne 0 -o $((yr % 400)) -eq 0 ]
then
echo "  $yr is a leap year "
else
echo " $yr its not  a leap year"
fi
 
