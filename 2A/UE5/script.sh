#!/bin/bash

retour=$(curl -s https://polebtsalternance.fr/histoire-de-lecole/campus-caen/ | grep -o 'Luther King')
if [ $? -eq 1 ] ; then
	echo "j'ai pas l'adresse"
else 
	echo "j'ai trouvé"
fi
#if [[ $retour != '' ]] ; then
#	echo "j'ai l'adresse"
#else 
#	echo "j'ai pas l'adresse"
#fi
