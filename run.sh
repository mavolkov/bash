#!/bin/bash

echo ""
echo "--------Start-------"

echo "Enter file name: "
read filename

[ -f $filename ] #файл существует? $? --> 0=да,1=нет

if [ $? == 0 ]; then
	echo "File exist! Do you want to overwrite? [y/n]"
	read flag
	if [ $flag = "y" ]; then
		echo "File was overwritte"
	else
		echo "File was not overwritte"
	fi
else 
	echo "file not exist"
fi


echo "--------Finish---------"
echo ""