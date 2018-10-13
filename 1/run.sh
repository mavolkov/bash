#!/bin/bash

echo ""
echo "--------Start-------"

echo "Enter file name: " # читаем имя файла
read filename

[ -f $filename ] #файл существует? $? --> 0=да,1=нет

if [ $? == 0 ]; then # если существует 
	echo "File exist! Do you want to overwrite? [y/n]" # вопрос на перезапись
	read flag
	if [ $flag = "y" ]; then # если y - будем перезаписывать
		echo -n "" > $filename
		echo "Enter your text:"
		read str
		while ! [ "$str" == "exit" ]; do # пока не ввели exit пишем в файл
			if [ "$str" ]; then # проверка на пустую строку
				echo $str >> $filename
			fi
			read str 
		done
		echo "File was overwritte."
	else
		echo "File will not be overwritte."
	fi
else 
	echo "Good! File not exist." # если файл не существует, создаем

	echo -n "" > $filename
	echo "Enter your text:"
	read str
	while ! [ "$str" == "exit" ]; do # пока не ввели exit, пишем в файл
		if [ "$str" ]; then # проверка на пустую строку
				echo $str >> $filename
		fi 
		read str 
	done

	echo "File was created."
fi


echo "--------Finish---------"
echo ""