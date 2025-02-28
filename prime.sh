#!/bin/bash
is_prime()
{
  num=$1
  if [ $num -le  1 ]; then
     echo "$num is not a prime number"
     return
  fi
  for ((i=2;i*i<=num;i++)); do
     if(( num%i==0 )); then
        echo "$num is not a prime number"
        return
     fi
  done
  echo "$num is a prime number"
}
read -p "Enter a number:" number
is_prime $number             
