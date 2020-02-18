#Unit Conversion

#a. 1ft = 12 in then 42 in = ? ft
echo "The 42 inch is equal to: \c"
a=`echo "scale=2; 42 / 12" | bc -l`
echo "$a feet"   


#b. Rectangular Plot of 60 feet x 40 feet in meters
echo "The Rectangular Plot of 60 feet x 40 feet in meters is : \c"
area_in_feet=`expr 60 \* 40`
area_in_meter_square=`echo $area_in_feet \* .3048 | bc -l`
echo "$area_in_meter_square metres"


#c. Calculate area of 25 such plots in acres
echo "and the area of 25 such plots in acres is : \c"
area_in_acre_of_25_plots=`echo $area_in_meter_square \* 25 *\ .000247 | bc -l`
echo "$area_in_acre_of_25_plots acres"
