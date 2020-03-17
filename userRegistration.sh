#!/bin/bash -x


#Discription:Using regx pattern solve the usercases
#Author:Hrishikesh Bodake
#Since:March 17 2020/Tuesday
checkFirstName(){

	read -p "Enter Valid FirstName: " firstName
	pattern="^[A-Z][a-z]{2,}"
	if [[ $firstName =~ $pattern ]]
	then
		echo Valid firstname..
	else
		echo InValid firstName..firstName should start with capital letter and should countain minimum 3 letters
	fi
}
checkLastName(){
	read -p "Enter valid LastName: " lastName
	local pattern="^[A-Z][a-z]{2,}"
	if [[ $lastName =~ $pattern ]]
	then
		echo Valid LastName
	else
		echo InValid LastName..LastName should start with capital letter and should countain minimum 3 letter
	fi
}
checkLastName

