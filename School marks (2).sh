#! /bin/bash
 
read -p "physics" phy
read -p "chemistry" chem
read -p " biology" bio
read -p "mathemeatics" math
read -p "computer" com
 
avg=$(bc <<< "( $phy + $chem + $bio + $math + $com ) / 5")
 
echo average: $avg
 
if (( $avg == 90 || $avg == 100 ))
then
        echo "A+"
 
elif (( $avg == 85 || $avg == 89 ))
then
        echo "A"
elif (( $avg == 80 || $avg == 84 ))
then
        echo "B+"
elif (( $avg == 75 || $avg == 79 ))
then
        echo "B"elif (( $avg == 50 || $avg == 75 ))
then
        echo "C+"
elif (( $avg == 50 || $avg == 30 ))
then 
        echo "F"
else
        echo "Missed Exam"
fi