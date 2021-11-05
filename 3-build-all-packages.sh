#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#############################################################################################"
echo
echo "This builds all the existing icons"
echo "Scans the existing folders"
echo "Be sure you have the highest number for all of them"
echo
echo "#############################################################################################"
count=0

for name in $(ls -d */); do
		count=$[count+1]
		echo
		echo $count
		echo
		cd $name
		./build*
		echo "#############################################################################################"
		echo "################  "$(basename `pwd`)" done"
		echo "#############################################################################################"
		cd ..
done

		echo "#############################################################################################"
		echo "###################                 Script finished                      ####################"
		echo "#############################################################################################"
