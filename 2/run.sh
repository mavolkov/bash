#!/bin/bash

echo ""
echo "--------Start-------"
#не забыть создать файлы и папку с "txt" в имени для тестов

counter=0

for filename in "."/* # ищем по всем файлам в папке
do
  if [[ $filename = *"txt"* ]]; then # если есть в имени "txt"
  	if [[ ! -d "$filename" ]]; then  # если это не папка
  		rm "$filename"				 # удаляем файл
  		echo "Был удален файл $filename."
	fi 
  fi
done

echo "--------Finish---------"
echo ""