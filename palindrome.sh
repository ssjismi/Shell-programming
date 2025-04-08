#!/bin/bash
read -p "ENter a string" str
str=$(echo "$str" | tr '[:upper:]' '[:lower:]')
len=${#str}
is_pali=1
for((i=0,j=len-1;i<j;i++,j--)); do
if [ "${str:i:1}" != "${str:j:1}" ];then
is_pali=0
break
fi
done
if [ $is_pali -eq 1 ]; then
echo "$str is palindrome"
else
echo "$str is not palindrome"
fi
