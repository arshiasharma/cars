#! /bin/bash
#cars.sh
#Arshia Sharma 

continue="yes"

while [ continue="yes" ]
do
echo "1. Enter car"
echo "2. Show list of cars"
echo "Q. Quit"


read CHOICE 

case $CHOICE in
	1) echo "Enter in car year: "
	   read YEAR 
	   echo "Enter in the make of the car: "
	   read MAKE 
	   echo "Enter the model of the car: "
	   read MODEL
	   echo "$YEAR $MAKE $MODEL">>My_old_cars
	   ;;

	2) sort My_old_cars
	;;

	Q) echo "Goodbye"
	   continue="no"
	   break 
	   ;;
esac

done 
