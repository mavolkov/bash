#!/bin/bash

echo "--------Begin-------"

[ -f run.sh ] #файл существует?
echo $? #0=да,1=нет

echo "$filename"
echo "--------Done---------"