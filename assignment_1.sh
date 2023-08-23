#! /bin/bash

if [ ! -d ~/assignment1 ]; then
	mkdir assignment
fi

cd assignment/

for i in {1..10};
do 
 	echo "hello world" > file_$i.txt
 	cat file_$i.txt | tr 'a-zA-Z' 'zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA'>> file_$i.txt 	

done
