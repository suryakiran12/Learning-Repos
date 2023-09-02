#!/bin/bash

#To show our inputs on termianl we need to use read 
echo "Please Enter your username:"
read USERNAME
echo "Please Enter the Password:"
read PASSWORD

#This is only for validation, we should not print in the terminal
echo
echo "Username is : $USERNAME"
echo "Password is : $PASSWORD"
echo

#To hide our inputs on termianl we need to use read -s
echo "Please Enter your username:"
read -s USERNAME
echo "Please Enter the Password:"
read -s PASSWORD

#This is only for validation, we should not print in the terminal
echo
echo "Username is : $USERNAME"
echo "Password is : $PASSWORD"
echo

#Read username and password in same line
read -s -p "Please Enter your username:" USERNAME
echo
read -s -p "Please Enter the Password:" PASSWORD
echo

#This is only for validation, we should not print in the terminal
echo
echo "Username is : $USERNAME"
echo "Password is : $PASSWORD"
echo