a=14.5
b=15.7
c=17.8

d=`echo $a + $b \* $c | bc`
e=`echo $c + $a / $b | bc`
f=`echo $a % $b + $c | bc`
g=`echo $a \* $b + c | bc`

echo $d
echo $e
echo $f
echo $g

#a=1
#b=2
#c=`expr $a + $b`

#echo "The value of $a and $b is $c"   

