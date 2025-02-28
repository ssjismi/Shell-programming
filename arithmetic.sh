#!/bin/bash
while true;do
   echo "Simple Calculator"
   echo "Enter first number:"
   read num1
   echo "Enter second number:"
   read num2
   echo "Enter operation( +,-,*,/,%,** ):"
   read op
   case $op in
      +)result=$(( num1+num2 ))
        echo "$num1+$num2=$result";;
      -)result=$(( num1-num2 ))
        echo "$num1-$num2=$result";;
      \*)result=$(( num1*num2 )) 
        echo "$num1*$num2=$result";;
      /)if [ $num2 -ne 0 ];then
           result=$(( num1/num2 ))
           echo "$num1/$num2=$result"
        else
           echo "Error:Division by zero is not allowed."
        fi;;
      %)if [ $num2 -ne 0 ];then
           result=$(( num1%num2 ))
           echo "$num1%$num2=$result"
        else
           echo "Error:Modulus by zero is not allowed."
        fi;;
      **)result=$((num1**num2))
           echo "$num1^$num2=$result";;
      *)echo "Invalid operation!";;
   esac
     echo "Do you want to perform another operation?(Yes/No)"
   read choice
   if [ "$choice" != "Yes" ];then
      echo "Exiting Calculator"
      break
   fi
done                          
