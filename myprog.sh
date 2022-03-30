#!bin/bash

mkdir temp
echo "...create temp directory..."
cp num1.txt temp
cp num2.txt temp
echo "...copy files to temp directory..."

PS3="select menu : "

select menu in add sub div mul
do
	echo "...${menu} selected..."
	echo "...run calculater..."
	parameter=${menu}
	bash cal.sh $parameter
	break;
done

