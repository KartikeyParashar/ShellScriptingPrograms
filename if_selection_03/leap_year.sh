#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.

echo "Enter the year for which you want to check(Leap or Not): \c"
read year

if [ `expr $year % 4` -eq 0 ]
then
	if [ `expr $year % 100` -eq 0 ]
	then
		if [ `expr $year % 400` -eq 0 ]
		then
			echo "Leap Year"
		else 
			echo "Not a Leap Year"
		fi
	else
		echo "Leap Year"
	fi
else
	echo "Not a Leap Year"
fi
