echo "Welcome to the Bash Rock paper Scissors game play"

echo "Enter number to choose"
echo "1. Rock"
echo "2. Paper"
echo "3. Scissors"
p=0
c=0
arr=(rock paper scissors)
for i in {1..5}
do
	read p1
	var=$(( $RANDOM % 3 + 1 )) 
	
	choice=${arr[var-1]}
	n=${arr[p1-1]}

	echo $n "X" $choice
	
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

	if [ $p -eq $c ]
	then
		echo "Thats a Tie!!"

	elif [ $p -gt $c ]
	then
		echo "You Won"

	else
		echo "Computer Won" 
	fi

