#!/bin/bash -x
clear

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
checkEmailId(){
	read -p "Enter Valid Email Id: " emailId
	local	pattern="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2,3}([.]?[a-z]{2})?$"
	if [[ $emailId =~ $pattern ]]
	then
		echo Valid Email Id
	else
		echo InValid Email Id
		checkEmailId
	fi
}
checkMobile(){
   read -p "Enter Valid Mobile Number: " mobNumber
   local pattern="^([0-9]{2}\s{1}[0-9]{10})$"
   if [[ $mobNumber =~ $pattern ]]
   then
      echo Valid Mobile Number
   else
      echo InValid Mobile Number
		checkMobile
   fi
}
checkMobile

sleep 1
