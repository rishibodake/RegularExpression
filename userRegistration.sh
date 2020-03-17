#!/bin/bash -x


#Discription:Using regx pattern solve the usercases
#Author:Hrishikesh Bodake
#Since:March 17 2020/Tuesday
checkUserName(){

	read -p "Enter UserName: " userName
	local pattern="^[A-Z][a-z]{2,}"
	if [[ $userName =~ $pattern ]]
	then
		echo Valid
	else
		echo InValid
	fi
}
checkLastName(){
	read -p "Enter LastName: " lastName
	local pattern="^[A-Z][a-z]{2,}"
	if [[ $lastName =~ $pattern ]]
	then
		echo Valid LastName
	else
		echo InValid LastName
	fi
}
checkLastName

