#!/bin/bash

ISVALID=0
trials=4
replay='O'

echo "Bonjour, Le but de ce jeu est de découvrir la combinaison de 4 chiffres"
echo "calculé aléatoirement par le programme. Vous disposez de plusieurs essais. le programme indiquera"
echo -e "\t- - il vous faut dininuer la valeur proposée"
echo -e "\t- + il vous faut augmenter la valeur proposée"
echo -e "\t- = la valeur proposée est exact.\n\n Bon jeu !\n"

while [[ $replay = 'O' ]]
do
	replay=' '
	# Généarer un sequence de 4 chiffres
	for i in `seq 0 3`
	do  
		ramdomseq["$i"]=$(( RANDOM % 10 ))
	done

	sequence=$(echo "${ramdomseq[*]}" | sed 's/ //g')
	echo "Le valeur de la séquence à trouvé est : $sequence"
		
	while [[ $ISVALID -eq 0 ]] 
	do 
		echo "ISVALID est faux ! $ISVALID"
		
		if [[ $trials -ne 0 ]] 
		then
			
			echo "Il vous reste $trials essai(s) !"       
			let trials-- 
			read -p 'Veuillez saisir une suite de 4 chiffres : ' -n 4 userseq
			echo ' '
			# Debug
			echo "sequence_utilisateur = ${userseq[*]}"
			response=""
			
			for y in `seq 0 3`
			do 
				
				if [[ ${ramdomseq["$y"]} > ${userseq["$y"]} ]]
				then
					response+="+"
				elif [[ ${ramdomseq["$y"]} < ${userseq["$y"]} ]]
				then
					response+="-"
				else
					response+="="
				fi
				
			done
			
			if [[ $response == '====' ]]
			then
				ISVALID=1
				echo 'Bien joué !'
			else
				echo 'GAME OVER !'
			fi
			
		else
			echo "Vous avez dépassé le nombre d'essais autorisés"
		fi
		
		read -p 'Souhaitez vous rejouer ? (O/N)' -n 1 replay
		echo ' '
		
		if [[ $replay = 'O' ]]
		then
			ISVALID=0
			trials=4
		else
			echo "Au revoir !"
		fi			 
	
	done
done
