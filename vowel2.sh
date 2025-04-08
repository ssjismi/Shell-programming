#!/bin/bash
read -p "Enter a string" str
str=$(echo "$str" | tr '[:upper:]' '[:lower:]')
vowe=0
co=0
for(( i=0;i<${#str};i++ )); do
char="${str:i:1}"
if [[ "$char" == "a"|| "$char" == "e" || "$char" == "i" || "$char" == "o" || "$char" == "u" ]]; then
((vowe++))
elif [[ "$char" =~ [a-z] ]]; then
((co++))
fi
done
echo "The no of vowels:$vowe"
echo "the no of consonants is:$co"

