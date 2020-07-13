ls -l   >tempfile
count=`wc -l <tempfile`
echo $count
echo " Please Enter  you guess for the numbe of files in the current directory"
read  userGuess


check_user_input()
{
while [[ $count -ne  $userGuess ]]; do
	echo " Checking if your guess is correct or not???"
	if [[ $count -lt $userGuess ]]
	then
		echo "Ohh!!! You have entered a guess value that is actually more then the real answer. Please enter  again."
        read  userGuess
    fi
	if [[ $count  -gt $userGuess ]]
	then
		echo "Ohh!!! You have entered a guess value that is actually less  then the real answer. Please enter  again."
        read  userGuess
	fi
	if [[ $count  -eq $userGuess ]]
	then
	    echo "Correct answer good. Bye Bye"
	    exit
	fi
done
}

#Call Fubnction
check_user_input
