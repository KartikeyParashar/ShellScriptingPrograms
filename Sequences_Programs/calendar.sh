#Write a program that takes a date as input and prints the day of the week
#that date falls on. Your program should take three command-line arguments:
#m (month), d (day), and y (year). For m use 1 for January, 2 for February, and
#so forth. For output print 0 for Sunday, 1 for Monday, 2 for Tuesday, and so
#forth. Use the following formulas, for the Gregorian calendar (where /
#denotes integer division):
#• y0 = y − (14 − m) / 12
#• x = y0 + y0/4 − y0/100 + y0/400
#• m0 = m + 12 × ((14 − m) / 12) − 2
#• d0 = (d + x + 31m0 / 12) mod 7

echo "Enter the month from 1 to 12: \c"
read month
echo "Enter the day from (1 to 30) or from (1 to 31) depending upon month: \c"
read day
echo "Enter the year: \c"
read year

year0=`expr $year - \( 14 - $month \) / 12`
x=`expr $year0 + $year0 / 4 - $year0 / 100 + $year0 / 400`
month0=`expr $month + 12 \* \( \( 14 - $month \) / 12 \) - 2`
day0=`expr \( \( $day + $x + \( 31 \* $month0 \) / 12 \) % 7 \)`

if [ $day0 -eq 0 ]
then 
	echo "Sunday"
elif [ $day0 -eq 1 ]
then 
	echo "Monday"
elif [ $day0 -eq 2 ]
then 
	echo "Tueday"
elif [ $day0 -eq 3 ]
then 
	echo "Wednesday"
elif [ $day0 -eq 4 ]
then 
	echo "Thrusday"
elif [ $day0 -eq 5 ]
then 
	echo "Friday"
elif [ $day0 -eq 6 ]
then 
	echo "Saturday"
fi
