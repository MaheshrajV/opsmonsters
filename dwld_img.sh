#!/bin/bash
echo "Select your choice:"
echo "----------------------------------"
echo "1.download all images"
echo "2.download single specified images"
echo "----------------------------------"
read user

case $user in

	1)
		echo "Here we go"
		while read -r obo; do
			wget -P /home/maheshraj/Documents/task1/images "$obo"
		done < images.csv
		#mkdir -p images
		#tail -n +2 images.csv | while read -r url; do
 
		  #name=$(basename "$url")
		  #curl -s "$url" -o "images/$name"
		 # echo "Downloaded $name"
	        #done

		;;
	

	2)
		echo "Select the specific images (1 to 5):"
		read want
		limg=$( head -n "$want" images.csv | tail -n 1)
		wget -P /home/maheshraj/Documents/task1/images "$limg"
		echo "Image location: /home/maheshraj/Documents/task1/images"
		;;

esac
