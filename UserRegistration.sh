#!/bin/bash -x

#checking the first and last name starting with capital letter and has minimum three characters
read -p "enter the first name" firstName
read -p "enter the last name" lastName

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

