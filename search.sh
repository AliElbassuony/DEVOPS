#!/bin/bash


read -p "Enter Your username: " name

greet() {
  echo "Hello, $name!"
}

greet

read -p "Choose number from 1 to 10.:" num 


while [ $num -gt 10 ] || [ $num -lt 1 ];
do
  read -p "Choose number from 1 to 10.:" num 
done

echo Your favourite Number is $num

filename=$1

cnt=1
while IFS= read -r line || [ -n "$line" ]
do
  echo "line$cnt: '$line'"
  ((cnt++))
done < "$filename"

echo "Done!"
