#!/bin/bash
read -p "ENter a number" num
temp=$num
rev=0
while [ $num -gt 0 ]
do
rem=$(( num%10 ))
rev=$((rev*10+rem))
num=$(( num/10 ))
done

if [ $rev -eq $temp ]; then
echo "$temp is palindrome"
else
echo "$temp is not palindrome"
fi
