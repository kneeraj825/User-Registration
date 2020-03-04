#!/bin/bash -x

echo __________Welcome to User_Registration_problem____________

read -p "enter first the word" Word
firstName="^[A-Z][a-z]{2,}"
if [[ $Word =~ $firstName  ]]
then
echo "its a valid name"
else
echo "it is not an valid name"
fi
