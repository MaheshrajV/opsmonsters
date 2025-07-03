#!/bin/bash

Storage="data_st.txt"

function add_det() {
    echo "Enter service name:"
    read service
    echo "Enter username:"
    read username
    echo "Enter password:"
    read -s  password
    echo -e "$service => username: $username => password: $password" >> "$Storage"
    printf "*****Data Saved***** \n"
}

function vdetails() {
    if [ -f "$Storage" ]; then
        echo "here the details"
        cat "$Storage"

    else
        echo "Storage not found"
    fi
    echo "-------------------------------"
}

function search() {
    echo "Enter service name to search:"
    read keyword
    grep -i "$keyword" "$Storage"
    if [ $? -eq 0 ]; then
	    echo "here your search"
    else
	    echo "keyword not found"
    fi
    echo "-----------------------------------\n"
}
function del_data() {
	echo "enter the  service want to delete:"
	read serdel
	sed -i "/^$serdel/d" data_st.txt
	echo "the data has been deleted"

}

function exit_term() {
	echo "See you again mahesh!"
	exit
}
function intro() {
    echo -e  "-------Password Manager-------\n1. Add Data\n2. View All Data\n3. Search Data\n4. Delete the data\n5. Exit\n-------------------------\n"
    echo -n "Choose an option: "
    read option
    case $option in
        1) add_det ;;
        2) vdetails ;;
        3) search ;;
        4) del_data ;;
	5)exit_term;;
        *) echo " Invalid choice, try again." ;;
    esac
}

while true;
do
    intro
done
