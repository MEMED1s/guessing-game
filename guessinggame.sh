function file_cound {
	ls -1 | wc -1
}
num_files =$(file_count)

function prompt_guess {
	echo "Guess the number of files in the current directory:"
	read guess
}
while true;do
	if[[ $guess -lt $num_files]]; then 
		echo"Your guess is too low"
	elif[[$guess -gt $num_files]] then 
		echo "Your guess is too high"
	else 
		echo "Congratulation you guessed the correct number of files"
		break
	fi
done
