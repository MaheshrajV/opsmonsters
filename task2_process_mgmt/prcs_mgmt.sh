#!/bin/bash

echo -e "--------Do what u want---------\nEnter the process:"
read uprocess
cat << EOF
----------Select the operation------------
1.view the process
2.kill the process
3.view the details of the process
-----------------------------------------
EOF
read uoption
case $uoption in
	1)pd=$(pidof $iprocess)
	  ps -u $pd -f
	  ;;
 
	2)pkill "$uprocess"
	  ;;

	3)ps aux
	  ;;

	*)printf "you entered a invalid option \n kindly enter option( 1to 3)"
esac
