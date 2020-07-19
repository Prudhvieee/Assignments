#1/bin/bash

gambler=100
wins=0
loses=0
numBets=0

function results {
	echo -e "Number of Times Won: $wins\nNumber of bets placed: $numBets";
}

echo -e "Welcome to Gambling!\nMoney in Gamblers Account: ₹$gambler\nStarting bets...."

while :
do	
	if [ $gambler -eq 200 ];then
		echo -e "\n\nGambler Won!\nMoney in Gamblers Account: ₹$gambler"
		results
		break
	elif [ $gambler -eq 0 ];then
		echo -e "\n\nGambler Lost!\nMoney in Gamblers Account: ₹$gambler\n$(results)\nAdd money and continue\nThank you!";
		break
	fi

	bet=$(($((RANDOM%10))%2))
	((numBets++))
	if [ $bet -eq 0 ];then
		#bet won
		((gambler++));
		((wins++));		
	elif [ $bet -eq 1 ];then
		#bet lost
		((gambler--));
		((loses++));		
	fi
done 

