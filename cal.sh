#!bin/bash

op=$1

read n1 < num1.txt
read n2 < num2.txt

if [ -n "$op" ]; then
	case $op in
		add) result=$(($n1+$n2));;
		sub) result=$(($n1-$n2));;
		div) result=$(($n1/$n2));;
		mul) result=$(($n1*$n2));;

		*) echo "Fatal error."
			exit 1;;
	esac

	echo "num1 : $n1"
	echo "num2 : $n2"
	echo "op : ${op}"
	echo "result : ${result}"
else
	echo "...none operator parameter..."
	PS3="selecet menu : "
	select menu in add sub div mul
	do
		op=${menu}
		case $menu in
			add) result=$(($n1+$n2))
				break;;
			sub) result=$(($n1-$n2))
				break;;
			div) result=$(($n1/$n2))
				break;;
			mul) result=$(($n1*$n2))
				break;;

			*)echo "Fatal error."
				exit 1;;
		esac
	done
	echo "num1 : $n1"
	echo "num2 : $n2"
	echo "op : ${op}"
	echo "result : ${result}"
fi

