echo "1. Rock"
echo "2. Paper"
echo "3. Scissors"

for i in {1..5}
do
	read n
	var=$(( $RANDOM % 3 + 1 )) 
	#echo $var

	if [ $var -eq 1 ]
	then
		choice="rock"
	elif [ $var -eq 2 ]
	then
		choice="paper"
	else 
		choice="scissors"
	fi

	echo $choice
	
	if [ $n == $choice ]
	then
		echo "Aww come again!!"

	elif [[ $n == "rock" && $choice == "scissors" ]] || [[ $n == "scissors" && $choice == "paper" ]] || [[ $n == "paper" && $choice == "rock" ]]
	then
	        echo "You won"	
		((p++))
	else
		echo "You lost"
		((c++))
	fi

done
	echo "Thats a Good game buddy Here's Your Score!"
	echo ""
	echo "Your Score:"  $p
	echo "Computer Score:" $c
	echo ""
	if [ $p == $c ]
	then
		echo "Thats a Tie!!"
	elif [ $p < $c ]
	then
		echo "Computer Won"
	else
		echo "You Won" 
	fi

