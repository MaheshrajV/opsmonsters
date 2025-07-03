#!/bin/bash

Storage="data_st.txt"

function add_det() {
    echo "Enter service name:"
    read service
    echo "Enter username:"
    read username
    echo "Enter password:"
    read -s  password
    echo "service: $service |username: $username |password: $password" >> "$Storage"
    printf "Data Saved /n --------------------------------"
}

function vdetails() {
    if [ -f "$Storage" ]; then
        echo "here the details"
        cat "$Storage"

    else
        echo "Storage not found"
    fi
    echo "------------------------------------"
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
    echo "-----------------------------------"
}

function intro() {
    echo "-------Password Manager-------"
    echo "1. Add Data"
    echo "2. View All Data"
    echo "3. Search Data"
    echo "4. Exit"
    echo "------------------------------"
    echo -n "Choose an option: "
    read option

    case $option in
        1) add_det ;;
        2) vdetails ;;
        3) search ;;
        4) echo -e "Exiting.../n Bye Mahesh"; exit ;;
        *) echo " Invalid choice, try again." ;;
    esac
}

while true
do
    intro
done
