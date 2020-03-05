#!/bin/bash -x

#checking the first and last name starting with capital letter and has minimum three #characters
read -p "enter the first name" firstName
read -p "enter the last name" lastName
read -p "enter the email" emailId
read -p "enter the mobile number" mobileNumber
read -p "enter the password" pass

#checking the validation
function validation()
{
	word=$1
	name=^[A-Z][a-z]{2,10}$
	if [[ $word =~ $name  ]]
	then
		echo "its a valid name"
	else
		echo "it is not an valid name"
	fi
}
firstResult=$(validation $firstName)
secondResult=$(validation $lastName)

#checking the validation of email
function emailValidation()
{
	email=$1
	id="^[a-zA-z]{2,10}.{1}([0-9]{2,10})?.{1}([.a-z]{2,10}.)?[@]{1}[a-z]{2,10}[.]{1}[a-z]{2,3}([.]{1}[a-z]{2})?$"
	if [[ $email =~ $id ]]
	then
		echo "its a valid email id"
	else
		echo "it is not an valid email id"
	fi
}
emailResult=$(emailValidation $emailId)

#checking the validation of mobile number
function mobileNumberValidation()
{
	number=$1
	mobile="^[0-9]{2}\s{1}[7-9]{1}[0-9]{9}$"
	if [[$number =~ $mobile]]
	then
		echo "its a valid mobile number"
	else
		echo "it is not an valid number"
	fi
}
mobileResult=$(mobileNumberValidation $mobileNumber)

#checking the password validation
function passwordValidation()
{
	password=$1
	validation="^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).*$"
	if [[$password =~ $validation]]
	then
		echo "its a valid password"
	else
		echo "it is not an valid password"
	fi
}
passwordResult=$(passwordValidation $pass)
