#!/bin/bash 

year=1947

for file in *.csv
do
	echo "==============$year================"

	mkdir "./yearly_lyrics/$year"

	song_count=0

	while IFS=, read -ra arr          
	do           
	    #echo -e "${arr[0]} ${arr[1]} ${arr[2]} \n"
	    song_count=$((song_count+1))

	    txt=".txt"
	    path="./yearly_lyrics/$year/$song_count$txt" 
	
			    
	    songtext -a ${arr[1]} -t ${arr[2]} > $path

	    line_count=$(wc -l $path| cut -f1 -d' ')

	    if (( line_count < 10 ))
			then
			echo "deleting $path $line_count"
			rm -r $path
		fi
	    
	    #echo "${arr[0]} ${arr[2]}"

	       
	done <./$file

	year=$((year+1))

done

echo -e "count is $count \n"