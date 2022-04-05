#!bin/bash

op=$1

read n1 < num1.txt
read n2 < num2.txt

declare -a num
num=($n1 $n2)

if [ -n "$op" ]; then
	case $op in
		add) result=$((${num[0]}+${num[1]}));;
		sub) result=$((${num[0]}-${num[1]}));;
		div) result=$((${num[0]}/${num[1]}));;
		mul) result=$((${num[0]}*${num[1]}));;

		*) echo "Fatal error."
			exit 1;;
	esac

	echo "num1 : ${num[0]}"
	echo "num2 : ${num[1]}"
	echo "op : ${op}"
	echo "result : ${result}"
else
	echo "...none operator parameter..."
	PS3="selecet menu : "
	select menu in add sub div mul
	do
		op=${menu}
		case $menu in
			add) result=$((${num[0]}+${num[1]}))
				break;;
			sub) result=$((${num[0]}-${num[1]}))
				break;;
			div) result=$((${num[0]}/${num[1]}))
				break;;
			mul) result=$((${num[0]}*${num[1]}))
				break;;

			*)echo "Fatal error."
				exit 1;;
		esac
	done
	echo "num1 : ${num[0]}"
	echo "num2 : ${num[1]}"
	echo "op : ${op}"
	echo "result : ${result}"
fi

